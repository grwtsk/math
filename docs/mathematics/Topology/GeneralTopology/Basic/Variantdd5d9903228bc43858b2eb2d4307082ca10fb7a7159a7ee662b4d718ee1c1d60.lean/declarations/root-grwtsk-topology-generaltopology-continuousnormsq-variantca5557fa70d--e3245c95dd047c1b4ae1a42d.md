# _root_.GRWTSK.Topology.GeneralTopology.ContinuousNormSq.Variantca5557fa70d983bade2173752f2f9b4c340e42fe40373cc84f7cca8092c53a84.RCLike.complexRingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39cbd997913da1192b8fa637469c20e6caf75a0df3a5ce6f8fc589259370e6a4",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.ContinuousNormSq.Variantca5557fa70d983bade2173752f2f9b4c340e42fe40373cc84f7cca8092c53a84.RCLike.complexRingEquiv",
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
  "slug": "root-grwtsk-topology-generaltopology-continuousnormsq-variantca5557fa70d--e3245c95dd047c1b4ae1a42d",
  "source": {
    "blob": "d46550ff80104730e700edb448e7831c09b53187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 347,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantdd5d9903228bc43858b2eb2d4307082ca10fb7a7159a7ee662b4d718ee1c1d60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3245c95dd047c1b4ae1a42d7566d6da853a312bb0186b08179167149414c37f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantdd5d9903228bc43858b2eb2d4307082ca10fb7a7159a7ee662b4d718ee1c1d60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39cbd997913da1192b8fa637469c20e6caf75a0df3a5ce6f8fc589259370e6a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Topology.GeneralTopology.ContinuousNormSq.Variantca5557fa70d983bade2173752f2f9b4c340e42fe40373cc84f7cca8092c53a84.RCLike.complexRingEquiv {𝕜 : Type*} [RCLike 𝕜]
    (h : RCLike.im (RCLike.I : 𝕜) = 1) : 𝕜 ≃+* ℂ where
  toFun x := RCLike.re x + RCLike.im x * I
  invFun x := re x + im x * RCLike.I
  left_inv x := by simp
  right_inv x := by simp [h]
  map_add' x y := by simp only [map_add, ofReal_add]; ring
  map_mul' x y := by
    simp only [RCLike.mul_re, ofReal_sub, ofReal_mul, RCLike.mul_im, ofReal_add]
    ring_nf
    rw [I_sq]
    ring

/-- The natural `ℝ`-linear isometry equivalence between `𝕜` satisfying `RCLike 𝕜` and `ℂ` when
`RCLike.im RCLike.I = 1`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantdd5d9903228bc43858b2eb2d4307082ca10fb7a7159a7ee662b4d718ee1c1d60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantdd5d9903228bc43858b2eb2d4307082ca10fb7a7159a7ee662b4d718ee1c1d60.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d46550ff80104730e700edb448e7831c09b53187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
