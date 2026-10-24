# DistribMulActionSemiHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca65cac952c84d67da87398b6cfe5be713a131160cd0fd3a85f3539c9b6d7c6f",
  "kind": "class",
  "lexical_name": "DistribMulActionSemiHomClass",
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
  "slug": "distribmulactionsemihomclass--38d4ac2bb80de1fa6e6868e5",
  "source": {
    "blob": "85d6a80071c9a60726fbc6f38f37756eb6a8d136",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 647,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Varianta7b90eff7b1a2a8078e4a318c6f0aa877bf1cbbb4dfa19f427f6f2f8b11ba48d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38d4ac2bb80de1fa6e6868e564a84cf29d07893903069d3e9dc75ea3e18865e9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Varianta7b90eff7b1a2a8078e4a318c6f0aa877bf1cbbb4dfa19f427f6f2f8b11ba48d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca65cac952c84d67da87398b6cfe5be713a131160cd0fd3a85f3539c9b6d7c6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 647–658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class DistribMulActionSemiHomClass (F : Type*)
    {M N : outParam Type*} (φ : outParam (M → N))
    (A B : outParam Type*)
    [Monoid M] [Monoid N]
    [AddMonoid A] [AddMonoid B] [DistribMulAction M A] [DistribMulAction N B]
    [FunLike F A B] : Prop
    extends MulActionSemiHomClass F φ A B, AddMonoidHomClass F A B

/-- `MulDistribMulActionSemiHomClass F φ A B` states that `F` is a type of morphisms
preserving the monoid structure and equivariant with respect to `φ`.
You should extend this class when you extend `MulDistribMulActionSemiHom`. -/
@[to_additive existing (dont_translate := M N) DistribMulActionSemiHomClass]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Varianta7b90eff7b1a2a8078e4a318c6f0aa877bf1cbbb4dfa19f427f6f2f8b11ba48d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Varianta7b90eff7b1a2a8078e4a318c6f0aa877bf1cbbb4dfa19f427f6f2f8b11ba48d.lean#L647).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85d6a80071c9a60726fbc6f38f37756eb6a8d136` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
