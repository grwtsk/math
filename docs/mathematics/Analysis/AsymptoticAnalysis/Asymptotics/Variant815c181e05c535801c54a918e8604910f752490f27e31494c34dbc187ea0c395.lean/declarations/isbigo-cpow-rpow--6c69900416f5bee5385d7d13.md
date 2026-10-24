# isBigO_cpow_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee6cbc4969b3160be45b205b710dee3aa722b452",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:776b3c6c-48d0-9587-8996-824057858986",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d8e1684-ea93-76fa-89e5-1d0e9246f101",
  "kind": "theorem",
  "lexical_name": "isBigO_cpow_rpow",
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
  "slug": "isbigo-cpow-rpow--6c69900416f5bee5385d7d13",
  "source": {
    "blob": "ee6cbc4969b3160be45b205b710dee3aa722b452",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 215,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c69900416f5bee5385d7d136007cf059bfdada9312443e99ad8f79ca5e29207",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d8e1684-ea93-76fa-89e5-1d0e9246f101`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigO_cpow_rpow (hl : IsBoundedUnder (· ≤ ·) l fun x => |(g x).im|) :
    (fun x => f x ^ g x) =O[l] fun x => abs (f x) ^ (g x).re :=
  calc
    (fun x => f x ^ g x) =O[l]
        (show α → ℝ from fun x => abs (f x) ^ (g x).re / Real.exp (arg (f x) * im (g x))) :=
      isBigO_of_le _ fun x => (abs_cpow_le _ _).trans (le_abs_self _)
    _ =Θ[l] (show α → ℝ from fun x => abs (f x) ^ (g x).re / (1 : ℝ)) :=
      ((isTheta_refl _ _).div (isTheta_exp_arg_mul_im hl))
    _ =ᶠ[l] (show α → ℝ from fun x => abs (f x) ^ (g x).re) := by
      simp only [ofReal_one, div_one]
      rfl
#align complex.is_O_cpow_rpow Complex.isBigO_cpow_rpow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant815c181e05c535801c54a918e8604910f752490f27e31494c34dbc187ea0c395.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee6cbc4969b3160be45b205b710dee3aa722b452` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
