# arrowAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92180baf7c9bab8ff8c2f0b2d1a2ad355bfcf9805761afca56589b8980d9219b",
  "kind": "def",
  "lexical_name": "arrowAction",
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
  "slug": "arrowaction--f775896a25f66d1e3abdd99c",
  "source": {
    "blob": "d494d72a30daea300b0824d653900cf714ad1a5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 342,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f775896a25f66d1e3abdd99c7c56109bb1fbe824bb19d8d460576a5429f489a2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92180baf7c9bab8ff8c2f0b2d1a2ad355bfcf9805761afca56589b8980d9219b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def arrowAction {G A B : Type*} [DivisionMonoid G] [MulAction G A] : MulAction G (A → B) where
  smul g F a := F (g⁻¹ • a)
  one_smul := by
    intro f
    show (fun x => f ((1 : G)⁻¹ • x)) = f
    simp only [inv_one, one_smul]
  mul_smul := by
    intros x y f
    show (fun a => f ((x*y)⁻¹ • a)) = (fun a => f (y⁻¹ • x⁻¹ • a))
    simp only [mul_smul, mul_inv_rev]
#align arrow_action arrowAction
#align arrow_add_action arrowAddAction

attribute [local instance] arrowAction

/-- When `B` is a monoid, `ArrowAction` is additionally a `MulDistribMulAction`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variant11a5934c9cdf01c801746669c83e3dea60af74057731419fea5020a704cd06ef.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d494d72a30daea300b0824d653900cf714ad1a5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
