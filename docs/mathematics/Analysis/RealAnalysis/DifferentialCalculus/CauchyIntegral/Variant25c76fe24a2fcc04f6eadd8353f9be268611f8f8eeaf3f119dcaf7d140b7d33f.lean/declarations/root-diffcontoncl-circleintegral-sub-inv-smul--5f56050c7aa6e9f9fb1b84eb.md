# _root_.DiffContOnCl.circleIntegral_sub_inv_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aac86aa902e778812ce356a977d682cff3105b0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 544,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25c76fe24a2fcc04f6eadd8353f9be268611f8f8eeaf3f119dcaf7d140b7d33f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19b90c43-9300-e1da-63a1-1dd697f3e07c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:816d1305-b5c6-fd59-f893-1d5fca20a81a",
  "kind": "theorem",
  "lexical_name": "_root_.DiffContOnCl.circleIntegral_sub_inv_smul",
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
  "slug": "root-diffcontoncl-circleintegral-sub-inv-smul--5f56050c7aa6e9f9fb1b84eb",
  "source": {
    "blob": "aac86aa902e778812ce356a977d682cff3105b0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 544,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant25c76fe24a2fcc04f6eadd8353f9be268611f8f8eeaf3f119dcaf7d140b7d33f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f56050c7aa6e9f9fb1b84ebbc6f1cb070c69f77a0da9a85a4cfc93a07946236",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant25c76fe24a2fcc04f6eadd8353f9be268611f8f8eeaf3f119dcaf7d140b7d33f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:816d1305-b5c6-fd59-f893-1d5fca20a81a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 544–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.DiffContOnCl.circleIntegral_sub_inv_smul {R : ℝ} {c w : ℂ} {f : ℂ → E}
    (h : DiffContOnCl ℂ f (ball c R)) (hw : w ∈ ball c R) :
    (∮ z in C(c, R), (z - w)⁻¹ • f z) = (2 * π * I : ℂ) • f w :=
  circleIntegral_sub_inv_smul_of_differentiable_on_off_countable countable_empty hw
    h.continuousOn_ball fun _x hx => h.differentiableAt isOpen_ball hx.1

/-- **Cauchy integral formula**: if `f : ℂ → E` is complex differentiable on an open disc and is
continuous on its closure, then for any `w` in this open ball we have
$\frac{1}{2πi}\oint_{|z-c|=R}(z-w)^{-1}f(z)\,dz=f(w)$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant25c76fe24a2fcc04f6eadd8353f9be268611f8f8eeaf3f119dcaf7d140b7d33f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant25c76fe24a2fcc04f6eadd8353f9be268611f8f8eeaf3f119dcaf7d140b7d33f.lean#L544).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aac86aa902e778812ce356a977d682cff3105b0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
