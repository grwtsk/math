# abs_abv_sub_le_abv_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7d4cd96cfa236509911d5ac7b359a5770bc52b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2919b6cd3a986b6a2bfac18331bd0b2e84942058749ca5db822de031160061e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e01667f-b14b-ac6e-ff53-c6ff63295121",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba71f838-4cfa-fbbe-e1bd-d9231ff6817e",
  "kind": "theorem",
  "lexical_name": "abs_abv_sub_le_abv_sub",
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
  "slug": "abs-abv-sub-le-abv-sub--aa61e5c31218b8dc7a409f2e",
  "source": {
    "blob": "e7d4cd96cfa236509911d5ac7b359a5770bc52b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 288,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variante2919b6cd3a986b6a2bfac18331bd0b2e84942058749ca5db822de031160061e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa61e5c31218b8dc7a409f2e81ffedf4d99be685bca378f801768d770be6fe91",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variante2919b6cd3a986b6a2bfac18331bd0b2e84942058749ca5db822de031160061e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba71f838-4cfa-fbbe-e1bd-d9231ff6817e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_abv_sub_le_abv_sub (a b : R) : abs (abv a - abv b) ≤ abv (a - b) :=
  abs_sub_le_iff.2 ⟨abv.le_sub _ _, by rw [abv.map_sub]; apply abv.le_sub⟩

end LinearOrderedCommRing

section trivial

variable {R : Type*} [Semiring R] [DecidablePred fun x : R ↦ x = 0] [NoZeroDivisors R]
variable {S : Type*} [Semiring S] [PartialOrder S] [IsOrderedRing S] [Nontrivial S]

/-- The *trivial* absolute value takes the value `1` on all nonzero elements. -/
protected
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variante2919b6cd3a986b6a2bfac18331bd0b2e84942058749ca5db822de031160061e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variante2919b6cd3a986b6a2bfac18331bd0b2e84942058749ca5db822de031160061e.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7d4cd96cfa236509911d5ac7b359a5770bc52b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
