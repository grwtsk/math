# isTheta_deriv_rpow_p_mul_one_sub_smoothingFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:354145f2-3d92-28ea-3622-920abb747386",
  "kind": "lemma",
  "lexical_name": "isTheta_deriv_rpow_p_mul_one_sub_smoothingFn",
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
  "slug": "istheta-deriv-rpow-p-mul-one-sub-smoothingfn--6cac539eda149c35fda182f9",
  "source": {
    "blob": "361ff8e89f0df836a78cc9cb7908d16489756652",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 170,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cac539eda149c35fda182f9eeac9328f723a786e8ba76003258929f806a69c7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:354145f2-3d92-28ea-3622-920abb747386`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTheta_deriv_rpow_p_mul_one_sub_smoothingFn {p : ℝ} (hp : p ≠ 0) :
    (fun x => ‖deriv (fun z => z ^ p * (1 - ε z)) x‖) =Θ[atTop] fun z => z ^ (p - 1) := by
  refine IsTheta.norm_left ?_
  calc (fun x => deriv (fun z => z ^ p * (1 - ε z)) x) =Θ[atTop] fun z => p * z ^ (p - 1) :=
        (isEquivalent_deriv_rpow_p_mul_one_sub_smoothingFn hp).isTheta
    _ =Θ[atTop] fun z => z ^ (p - 1) := IsTheta.const_mul_left hp <| isTheta_refl _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `361ff8e89f0df836a78cc9cb7908d16489756652` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
