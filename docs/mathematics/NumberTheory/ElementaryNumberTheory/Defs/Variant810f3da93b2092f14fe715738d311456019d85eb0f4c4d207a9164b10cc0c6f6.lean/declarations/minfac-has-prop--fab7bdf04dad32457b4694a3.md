# minFac_has_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66ca179f-e87c-c62c-36c8-e0e01b882af6",
  "kind": "theorem",
  "lexical_name": "minFac_has_prop",
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
  "slug": "minfac-has-prop--fab7bdf04dad32457b4694a3",
  "source": {
    "blob": "3af0f375b00d6a84f3c71f761520a32a7239a928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 277,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant810f3da93b2092f14fe715738d311456019d85eb0f4c4d207a9164b10cc0c6f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fab7bdf04dad32457b4694a377bbd13869e4681f5d1028f6e299b32c06ec0034",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Defs/Variant810f3da93b2092f14fe715738d311456019d85eb0f4c4d207a9164b10cc0c6f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66ca179f-e87c-c62c-36c8-e0e01b882af6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem minFac_has_prop {n : ℕ} (n1 : n ≠ 1) : minFacProp n (minFac n) := by
  by_cases n0 : n = 0
  · simp [n0, minFacProp]
  have n2 : 2 ≤ n := by
    revert n0 n1
    rcases n with (_ | _ | _) <;> simp [succ_le_succ]
  simp only [minFac_eq]
  by_cases d2 : 2 ∣ n <;> simp only [d2, ↓reduceIte]
  · exact ⟨le_rfl, d2, fun k k2 _ => k2⟩
  · refine
      minFacAux_has_prop n2 3 0 rfl fun m m2 d => (Nat.eq_or_lt_of_le m2).resolve_left (mt ?_ d2)
    exact fun e => e.symm ▸ d

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Defs/Variant810f3da93b2092f14fe715738d311456019d85eb0f4c4d207a9164b10cc0c6f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant810f3da93b2092f14fe715738d311456019d85eb0f4c4d207a9164b10cc0c6f6.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3af0f375b00d6a84f3c71f761520a32a7239a928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
