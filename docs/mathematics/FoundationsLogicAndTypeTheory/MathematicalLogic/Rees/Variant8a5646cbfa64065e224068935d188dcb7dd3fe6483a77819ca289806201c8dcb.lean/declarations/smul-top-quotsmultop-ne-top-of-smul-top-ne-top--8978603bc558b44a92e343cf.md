# smul_top_quotSMulTop_ne_top_of_smul_top_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36b564be-39a1-0ca0-893d-b572473d02ee",
  "kind": "lemma",
  "lexical_name": "smul_top_quotSMulTop_ne_top_of_smul_top_ne_top",
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
  "slug": "smul-top-quotsmultop-ne-top-of-smul-top-ne-top--8978603bc558b44a92e343cf",
  "source": {
    "blob": "0d90c92b043711f4ce2e5e4b3d610a215b3b1fa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rees/Variant8a5646cbfa64065e224068935d188dcb7dd3fe6483a77819ca289806201c8dcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8978603bc558b44a92e343cf2ed5821c86150cb9edc8ca1440a0c0bdc8b605c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Rees/Variant8a5646cbfa64065e224068935d188dcb7dd3fe6483a77819ca289806201c8dcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36b564be-39a1-0ca0-893d-b572473d02ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma smul_top_quotSMulTop_ne_top_of_smul_top_ne_top {M : Type*} [AddCommGroup M]
    [Module R M] {I : Ideal R} {r : R} (hr : r ∈ I)
    (hI : I • (⊤ : Submodule R M) ≠ ⊤) :
    I • (⊤ : Submodule R (QuotSMulTop r M)) ≠ ⊤ := by
  by_contra eq
  absurd congrArg (Submodule.comap (Submodule.mkQ _)) eq
  simpa [Submodule.comap_smul_top_of_surjective I _ (Submodule.mkQ_surjective _),
    Submodule.smul_mono_left ((span_singleton_le_iff_mem I).mpr hr),
    ← Submodule.ideal_span_singleton_smul] using hI

namespace ModuleCat

/-- The implication `(3) → (4)` of `exists_isRegular_tfae`: for `M N` finitely generated
module over Noetherian ring `R` and ideal `I` satisfying `IM < M` and `Supp N = V(I)`,
if `Ext N M i = 0` for all `i < n`,
then there exists an `M`-regular sequence of length `n` contained in `I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Rees/Variant8a5646cbfa64065e224068935d188dcb7dd3fe6483a77819ca289806201c8dcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rees/Variant8a5646cbfa64065e224068935d188dcb7dd3fe6483a77819ca289806201c8dcb.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d90c92b043711f4ce2e5e4b3d610a215b3b1fa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
