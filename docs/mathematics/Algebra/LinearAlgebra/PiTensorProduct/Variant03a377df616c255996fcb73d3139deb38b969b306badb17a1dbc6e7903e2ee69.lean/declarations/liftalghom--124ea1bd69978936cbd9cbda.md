# liftAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae086013dbd66f26747e843b015f5242998429523313048c66f11c92ad1c6758",
  "kind": "def",
  "lexical_name": "liftAlgHom",
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
  "slug": "liftalghom--124ea1bd69978936cbd9cbda",
  "source": {
    "blob": "d83268dbd3e17ce9b5c05b7197de6b8be092df00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 207,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:124ea1bd69978936cbd9cbdab13e5cbb496be09df4dcfd331d7b757c6fdb11c0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae086013dbd66f26747e843b015f5242998429523313048c66f11c92ad1c6758`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftAlgHom {S : Type*} [Semiring S] [Algebra R S]
    (f : MultilinearMap R A S)
    (one : f 1 = 1) (mul : ∀ x y, f (x * y) = f x * f y) : (⨂[R] i, A i) →ₐ[R] S :=
  AlgHom.ofLinearMap (lift f) (show lift f (tprod R 1) = 1 by simp [one]) <|
    LinearMap.map_mul_iff _ |>.mpr <| by aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d83268dbd3e17ce9b5c05b7197de6b8be092df00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
