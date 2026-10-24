# scan_shape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08df2a63-8f3b-1e1d-6d95-399ada8d84b8",
  "kind": "theorem",
  "lexical_name": "scan_shape",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "scan-shape--7a65cb322bcf74414f1311ed",
  "source": {
    "blob": "64a511b0d114f6f7d8aa83cfba33256c23053d80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 99,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a65cb322bcf74414f1311ed8bc4dbb3f625d97910e80ab4d3d59e0ab24c81b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08df2a63-8f3b-1e1d-6d95-399ada8d84b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scan_shape {c : Coordinates} {p : RationalPoleValue.Parameters}
    {j n : ℕ} {a out : Accum} {rows : Packet}
    (h : scan c p j n a rows = some out) :
    rows.length = n ∧ ∀ row ∈ rows, row.length = p.squarings := by
  induction n generalizing j a rows with
  | zero => cases rows <;> simp_all [scan]
  | succ n ih =>
    cases rows with
    | nil => simp [scan] at h
    | cons row rest =>
      cases hv : CheckedIntegerPower.evaluate c ((j+1 : ℕ) : ℚ)
          (RationalPoleValue.resolution p (j+1)) row with
      | none => simp [scan, hv] at h
      | some v =>
        have hs : scan c p (j+1) n (advance p (j+1) v a) rest = some out := by
          simpa only [scan, hv] using h
        obtain ⟨hlen,hrows⟩ := ih hs
        have hrow : row.length = p.squarings := CheckedIntegerPower.accepted_length hv
        refine ⟨by simp [hlen],?_⟩
        intro x hx
        rcases List.mem_cons.mp hx with hsame | hx
        · subst x; exact hrow
        · exact hrows x hx

/-- Every admitted original sequence admits actual witnesses. This is not an
assertion that any external packet, serialized report or claimed seed is correct. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64a511b0d114f6f7d8aa83cfba33256c23053d80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
