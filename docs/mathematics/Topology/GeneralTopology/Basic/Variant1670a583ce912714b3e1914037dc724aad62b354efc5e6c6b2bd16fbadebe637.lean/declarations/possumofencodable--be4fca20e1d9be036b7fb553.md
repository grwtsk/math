# posSumOfEncodable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e8844e01eae398eb880e883d5ef603a9713861942a7d956f15141e476b195f5",
  "kind": "def",
  "lexical_name": "posSumOfEncodable",
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
  "slug": "possumofencodable--be4fca20e1d9be036b7fb553",
  "source": {
    "blob": "c902b2b00ec3c528e0f33d8de642fb31f0672aa1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 484,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be4fca20e1d9be036b7fb553b45c72a022fe167b37663f1931cdc9e3cc2bd95f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e8844e01eae398eb880e883d5ef603a9713861942a7d956f15141e476b195f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def posSumOfEncodable {ε : ℝ} (hε : 0 < ε) (ι) [Encodable ι] :
    { ε' : ι → ℝ // (∀ i, 0 < ε' i) ∧ ∃ c, HasSum ε' c ∧ c ≤ ε } := by
  let f n := ε / 2 / 2 ^ n
  have hf : HasSum f ε := hasSum_geometric_two' _
  have f0 : ∀ n, 0 < f n := fun n => div_pos (half_pos hε) (pow_pos zero_lt_two _)
  refine' ⟨f ∘ Encodable.encode, fun i => f0 _, _⟩
  rcases hf.summable.comp_injective (@Encodable.encode_injective ι _) with ⟨c, hg⟩
  refine' ⟨c, hg, hasSum_le_inj _ (@Encodable.encode_injective ι _) _ _ hg hf⟩
  · intro i _
    exact le_of_lt (f0 _)
  · intro n
    exact le_rfl
#align pos_sum_of_encodable posSumOfEncodable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c902b2b00ec3c528e0f33d8de642fb31f0672aa1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
