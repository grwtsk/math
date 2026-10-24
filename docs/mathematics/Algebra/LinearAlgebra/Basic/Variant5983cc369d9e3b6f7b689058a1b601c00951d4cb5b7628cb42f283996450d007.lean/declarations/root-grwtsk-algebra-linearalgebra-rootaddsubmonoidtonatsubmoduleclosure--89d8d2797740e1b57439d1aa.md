# _root_.GRWTSK.Algebra.LinearAlgebra.RootAddSubmonoidToNatSubmoduleClosure.Variant6e1599740a49823e80001aa70e662d1fa4542db127d2bca286bacc43a58a8e49.LinearMap.exists_ne_zero_of_sSup_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aae2e324-d39c-1465-b57b-9f662b3f5e3e",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.RootAddSubmonoidToNatSubmoduleClosure.Variant6e1599740a49823e80001aa70e662d1fa4542db127d2bca286bacc43a58a8e49.LinearMap.exists_ne_zero_of_sSup_eq",
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
  "slug": "root-grwtsk-algebra-linearalgebra-rootaddsubmonoidtonatsubmoduleclosure--89d8d2797740e1b57439d1aa",
  "source": {
    "blob": "5bc94086e7e6e6f4bd7f58e9e061153b953d6896",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 467,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5983cc369d9e3b6f7b689058a1b601c00951d4cb5b7628cb42f283996450d007.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89d8d2797740e1b57439d1aa3eb99eb8cb245fc86d59626c13e2c1ec334ae0a6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant5983cc369d9e3b6f7b689058a1b601c00951d4cb5b7628cb42f283996450d007.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aae2e324-d39c-1465-b57b-9f662b3f5e3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.RootAddSubmonoidToNatSubmoduleClosure.Variant6e1599740a49823e80001aa70e662d1fa4542db127d2bca286bacc43a58a8e49.LinearMap.exists_ne_zero_of_sSup_eq {N : Submodule R M} {f : N →ₛₗ[σ₁₂] M₂}
    (h : f ≠ 0) (s : Set (Submodule R M)) (hs : sSup s = N):
    ∃ m, ∃ h : m ∈ s, f ∘ₛₗ inclusion ((le_sSup h).trans_eq hs) ≠ 0 :=
  have ⟨_, ⟨m, hm, rfl⟩, ne⟩ := LinearMap.exists_ne_zero_of_sSup_eq_top h (comap N.subtype '' s) <|
    by rw [sSup_eq_iSup] at hs; rw [sSup_image, ← hs, biSup_comap_subtype_eq_top]
  ⟨m, hm, fun eq ↦ ne (LinearMap.ext fun x ↦ congr($eq ⟨x, x.2⟩))⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant5983cc369d9e3b6f7b689058a1b601c00951d4cb5b7628cb42f283996450d007.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant5983cc369d9e3b6f7b689058a1b601c00951d4cb5b7628cb42f283996450d007.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bc94086e7e6e6f4bd7f58e9e061153b953d6896` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
