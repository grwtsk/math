# fromTangentSpace_mfderiv_smul_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff5126317b54aaa393eb4c816c76e3c24cfacf45",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 400,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d93534533e8ec07b8dc2567c70462b589988f744d09227ffc14f63ed9e176c07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15287d09-efc4-45d4-ca4e-1209ad42c50e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d967a31-b804-d166-ce3a-7a596a00ec2d",
  "kind": "lemma",
  "lexical_name": "fromTangentSpace_mfderiv_smul_apply",
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
  "slug": "fromtangentspace-mfderiv-smul-apply--79ff2b3e3630e0ec7e326980",
  "source": {
    "blob": "ff5126317b54aaa393eb4c816c76e3c24cfacf45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 400,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd93534533e8ec07b8dc2567c70462b589988f744d09227ffc14f63ed9e176c07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79ff2b3e3630e0ec7e3269802ea12c90ceabce4b38629dc5860d160578ccd772",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd93534533e8ec07b8dc2567c70462b589988f744d09227ffc14f63ed9e176c07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d967a31-b804-d166-ce3a-7a596a00ec2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma fromTangentSpace_mfderiv_smul_apply (hf : MDiffAt f x) (hg : MDiffAt g x)
    (v : TangentSpace% x) :
    fromTangentSpace _ (mfderiv% (f • g) x v)
    = f x • fromTangentSpace _ (mfderiv% g x v) + fromTangentSpace _ (mfderiv% f x v) • g x := by
  simpa using congr($(fromTangentSpace_mfderiv_smul hf hg) v)

-- TODO: investigate inlining the proof: this lemma statement abuses defeq
/-- Given maps `f`, `g` from a manifold into a field `𝕜` and `𝕜`-vector space `V`, respectively, the
formula for the `mfderiv` (differential) of their scalar multiplication `f • g` in the direction of
the tangent vector `v`.

Mathematically speaking the formula is `d(f • g)(v) = f • dg(v) + df(v) • g`, but to get it to
typecheck we need a phrasing involving the canonical identification `NormedSpace.fromTangentSpace`
between the vector space `V` and the tangent space to this vector space at any point. This is
because two different tangent spaces (at `(f • g) x` and `g x`) appear in the equation.

This is a defeq variant of the main lemma `fromTangentSpace_mfderiv_smul_apply`, in which we work in
the tangent space at `f x • g x` (the simp-normal form) rather than at `(f • g) x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd93534533e8ec07b8dc2567c70462b589988f744d09227ffc14f63ed9e176c07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd93534533e8ec07b8dc2567c70462b589988f744d09227ffc14f63ed9e176c07.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff5126317b54aaa393eb4c816c76e3c24cfacf45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
