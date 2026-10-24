# transposeLinearEquiv_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4cc4fb0-746d-8e79-db83-743e9f243de1",
  "kind": "theorem",
  "lexical_name": "transposeLinearEquiv_symm",
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
  "slug": "transposelinearequiv-symm--444da0c26d1f6698800f12dd",
  "source": {
    "blob": "a86028918953b8cf35ae5267fff943a95089c362",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 910,
    "line": 899,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant209cc2afa02fb03ccb75ed93556193fad13a1014512f7fa5c7674249a28dfdb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:444da0c26d1f6698800f12dd3d482e833b3b7e480f1ff2bbadfe892262fc5a68",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant209cc2afa02fb03ccb75ed93556193fad13a1014512f7fa5c7674249a28dfdb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4cc4fb0-746d-8e79-db83-743e9f243de1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 899–910.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transposeLinearEquiv_symm [Semiring R] [AddCommMonoid α] [Module R α] :
    (transposeLinearEquiv m n R α).symm = transposeLinearEquiv n m R α :=
  rfl

variable {m n R α}
variable (m α)

/-- `Matrix.transpose` as a `RingEquiv` to the opposite ring.

See also `RingEquiv.mopMatrix` for a version that doesn't require `α` to have commutative
multiplication, by taking its opposite. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant209cc2afa02fb03ccb75ed93556193fad13a1014512f7fa5c7674249a28dfdb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant209cc2afa02fb03ccb75ed93556193fad13a1014512f7fa5c7674249a28dfdb8.lean#L899).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a86028918953b8cf35ae5267fff943a95089c362` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
