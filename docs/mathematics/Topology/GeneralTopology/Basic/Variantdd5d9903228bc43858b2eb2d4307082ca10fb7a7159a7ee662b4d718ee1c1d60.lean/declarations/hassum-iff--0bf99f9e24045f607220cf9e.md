# hasSum_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecafb0e8-d1ae-5727-f897-a8d53a43c058",
  "kind": "theorem",
  "lexical_name": "hasSum_iff",
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
  "slug": "hassum-iff--0bf99f9e24045f607220cf9e",
  "source": {
    "blob": "d46550ff80104730e700edb448e7831c09b53187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 481,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantdd5d9903228bc43858b2eb2d4307082ca10fb7a7159a7ee662b4d718ee1c1d60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bf99f9e24045f607220cf9ee50a3007493301ac2feb5c22e61ed87e65def87e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantdd5d9903228bc43858b2eb2d4307082ca10fb7a7159a7ee662b4d718ee1c1d60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecafb0e8-d1ae-5727-f897-a8d53a43c058`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_iff (f : α → 𝕜) (c : 𝕜) :
    HasSum f c ↔ HasSum (fun x => re (f x)) (re c) ∧ HasSum (fun x => im (f x)) (im c) := by
  refine ⟨fun h => ⟨hasSum_re _ h, hasSum_im _ h⟩, ?_⟩
  rintro ⟨h₁, h₂⟩
  simpa only [re_add_im] using
    ((hasSum_ofReal 𝕜).mpr h₁).add (((hasSum_ofReal 𝕜).mpr h₂).mul_right I)

end tsum

end RCLike

namespace Complex

@[deprecated (since := "2025-02-16")] alias hasProd_abs := HasProd.norm
@[deprecated (since := "2025-02-16")] alias multipliable_abs := Multipliable.norm
@[deprecated (since := "2025-02-16")] alias abs_tprod := norm_tprod

/-!
We have to repeat the lemmas about `RCLike.re` and `RCLike.im` as they are not syntactic
matches for `Complex.re` and `Complex.im`.

We do not have this problem with `ofReal` and `conj`, although we repeat them anyway for
discoverability and to avoid the need to unify `𝕜`.
-/


section tsum

variable {α : Type*}

open ComplexConjugate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantdd5d9903228bc43858b2eb2d4307082ca10fb7a7159a7ee662b4d718ee1c1d60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantdd5d9903228bc43858b2eb2d4307082ca10fb7a7159a7ee662b4d718ee1c1d60.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d46550ff80104730e700edb448e7831c09b53187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
