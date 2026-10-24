# condExp_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8763115e603819c0ad349ec77bf287c998bb04d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 349,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd716096-f768-2ff5-f2b7-4dcdc4126ee7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6623edad-06ad-aa52-51b8-9fec3e36bd18",
  "kind": "theorem",
  "lexical_name": "condExp_smul",
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
  "slug": "condexp-smul--eaf904454f8f17c121c83717",
  "source": {
    "blob": "d8763115e603819c0ad349ec77bf287c998bb04d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 349,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaf904454f8f17c121c8371700e963e8d940cc33e9acdb857522620ae77a1922",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6623edad-06ad-aa52-51b8-9fec3e36bd18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_smul [NormedSpace 𝕜 E] (c : 𝕜) (f : α → E) (m : MeasurableSpace α) :
    μ[c • f|m] =ᵐ[μ] c • μ[f|m] := by
  by_cases hm : m ≤ m₀
  swap; · simp_rw [condExp_of_not_le hm]; simp
  by_cases hμm : SigmaFinite (μ.trim hm)
  swap; · simp_rw [condExp_of_not_sigmaFinite hm hμm]; simp
  refine (condExp_ae_eq_condExpL1 hm _).trans ?_
  rw [condExpL1_smul c f]
  refine (condExp_ae_eq_condExpL1 hm f).mp ?_
  refine (coeFn_smul c (condExpL1 hm μ f)).mono fun x hx1 hx2 => ?_
  simp only [hx1, hx2, Pi.smul_apply]

@[deprecated (since := "2025-01-21")] alias condexp_smul := condExp_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantd4faf0383074e6f25240e331edc9d1b2a852540274834445436eb2a99014a0ef.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8763115e603819c0ad349ec77bf287c998bb04d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
