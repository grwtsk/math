# scale_opowAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93516ebd-609b-1d54-3e8b-e09f77a4a781",
  "kind": "theorem",
  "lexical_name": "scale_opowAux",
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
  "slug": "scale-opowaux--d12fa60c7e6a51f53a781b1b",
  "source": {
    "blob": "97cdb8f9800240a324420c8df10cb8f246eb5a4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 780,
    "line": 767,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant91eec0017e531547f0d72bbcec8fb706926352ecc9232b153c366d1c4a566d40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d12fa60c7e6a51f53a781b1b3f4d5b19291e3e8d317003c4c9bf911f6fc0ef49",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant91eec0017e531547f0d72bbcec8fb706926352ecc9232b153c366d1c4a566d40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93516ebd-609b-1d54-3e8b-e09f77a4a781`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 767–780.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scale_opowAux (e a0 a : ONote) [NF e] [NF a0] [NF a] :
    ∀ k m, repr (opowAux e a0 a k m) = ω ^ repr e * repr (opowAux 0 a0 a k m)
  | 0, m => by cases m <;> simp [opowAux]
  | k + 1, m => by
    by_cases h : m = 0
    · simp [h, opowAux, mul_add, opow_add, mul_assoc, scale_opowAux _ _ _ k]
    · -- Porting note: rewrote proof
      rw [opowAux]; swap
      · assumption
      rw [opowAux]; swap
      · assumption
      rw [repr_add, repr_scale, scale_opowAux _ _ _ k]
      simp only [repr_add, repr_scale, opow_add, mul_assoc, zero_add, mul_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant91eec0017e531547f0d72bbcec8fb706926352ecc9232b153c366d1c4a566d40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant91eec0017e531547f0d72bbcec8fb706926352ecc9232b153c366d1c4a566d40.lean#L767).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97cdb8f9800240a324420c8df10cb8f246eb5a4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
