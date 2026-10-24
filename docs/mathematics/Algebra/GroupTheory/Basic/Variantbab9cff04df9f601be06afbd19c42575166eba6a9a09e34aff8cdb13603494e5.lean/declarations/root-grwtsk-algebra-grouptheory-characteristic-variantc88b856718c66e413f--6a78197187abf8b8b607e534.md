# _root_.GRWTSK.Algebra.GroupTheory.Characteristic.Variantc88b856718c66e413f7f60ec9282910cae79e4d6b0f2a63145b8824325842a22.Submonoid.pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4006882c12979be55223ae9b62b4f4d77f5f7d45803e259782e5974acfc3e07e",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.Characteristic.Variantc88b856718c66e413f7f60ec9282910cae79e4d6b0f2a63145b8824325842a22.Submonoid.pi",
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
  "slug": "root-grwtsk-algebra-grouptheory-characteristic-variantc88b856718c66e413f--6a78197187abf8b8b607e534",
  "source": {
    "blob": "21a3634cf5f0ba2d14d0a7ace9a2497d13f8e2e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 181,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantbab9cff04df9f601be06afbd19c42575166eba6a9a09e34aff8cdb13603494e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a78197187abf8b8b607e5348ed6439ea682d6e2794cd45e44bded6e31d571dd",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantbab9cff04df9f601be06afbd19c42575166eba6a9a09e34aff8cdb13603494e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4006882c12979be55223ae9b62b4f4d77f5f7d45803e259782e5974acfc3e07e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.GroupTheory.Characteristic.Variantc88b856718c66e413f7f60ec9282910cae79e4d6b0f2a63145b8824325842a22.Submonoid.pi [∀ i, MulOneClass (f i)] (I : Set η) (s : ∀ i, Submonoid (f i)) :
    Submonoid (∀ i, f i) where
  carrier := I.pi fun i => (s i).carrier
  one_mem' i _ := (s i).one_mem
  mul_mem' hp hq i hI := (s i).mul_mem (hp i hI) (hq i hI)

variable [∀ i, Group (f i)]

/-- A version of `Set.pi` for subgroups. Given an index set `I` and a family of submodules
`s : Π i, Subgroup f i`, `pi I s` is the subgroup of dependent functions `f : Π i, f i` such that
`f i` belongs to `pi I s` whenever `i ∈ I`. -/
@[to_additive
      "A version of `Set.pi` for `AddSubgroup`s. Given an index set `I` and a family
      of submodules `s : Π i, AddSubgroup f i`, `pi I s` is the `AddSubgroup` of dependent functions
      `f : Π i, f i` such that `f i` belongs to `pi I s` whenever `i ∈ I`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantbab9cff04df9f601be06afbd19c42575166eba6a9a09e34aff8cdb13603494e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantbab9cff04df9f601be06afbd19c42575166eba6a9a09e34aff8cdb13603494e5.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21a3634cf5f0ba2d14d0a7ace9a2497d13f8e2e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
