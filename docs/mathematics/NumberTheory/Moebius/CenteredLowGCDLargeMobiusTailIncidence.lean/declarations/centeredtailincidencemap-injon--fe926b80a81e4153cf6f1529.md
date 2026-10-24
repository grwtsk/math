# centeredTailIncidenceMap_injOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b330d296-6ad4-5775-426b-b45d52afecb7",
  "kind": "theorem",
  "lexical_name": "centeredTailIncidenceMap_injOn",
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
  "slug": "centeredtailincidencemap-injon--fe926b80a81e4153cf6f1529",
  "source": {
    "blob": "8f3e367620acc5d59fdcd2bde9b8b02f4fa878f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 136,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe926b80a81e4153cf6f152977cd4555c201a948204ff282caffac40ab27a0d6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b330d296-6ad4-5775-426b-b45d52afecb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTailIncidenceMap_injOn
    {X r : ℕ}
    (hr : 1 < r) :
    Set.InjOn
      (centeredTailIncidenceMap r)
      (↑(centeredTailIncidenceSet X r) : Set (ℕ × ℕ)) := by
  intro a ha b hb hab
  rcases mem_centeredTailIncidenceSet_iff.mp ha with
    ⟨hna, hda, hrda, hdna⟩
  rcases mem_centeredTailIncidenceSet_iff.mp hb with
    ⟨hnb, hdb, hrdb, hdnb⟩
  have hrna : r ∣ a.1 := dvd_trans hrda hdna
  have hrnb : r ∣ b.1 := dvd_trans hrdb hdnb
  have hfirst :
      a.1 / r = b.1 / r :=
    congrArg (fun z : Σ _a : ℕ, ℕ => z.1) hab
  have hsecond :
      a.2 / r = b.2 / r :=
    congrArg (fun z : Σ _a : ℕ, ℕ => z.2) hab
  apply Prod.ext
  · calc
      a.1 = r * (a.1 / r) := (Nat.mul_div_cancel' hrna).symm
      _ = r * (b.1 / r) := by rw [hfirst]
      _ = b.1 := Nat.mul_div_cancel' hrnb
  · calc
      a.2 = r * (a.2 / r) := (Nat.mul_div_cancel' hrda).symm
      _ = r * (b.2 / r) := by rw [hsecond]
      _ = b.2 := Nat.mul_div_cancel' hrdb

/-- Exact tail incidences are no more numerous than all positive divisor
incidences up to `4X/r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f3e367620acc5d59fdcd2bde9b8b02f4fa878f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
