# ofMulEquivOfLocalizations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:546385eb22947e73bbbe587f7bfadbbc1e173cdf0a0b845c62dff0741a2ca85c",
  "kind": "def",
  "lexical_name": "ofMulEquivOfLocalizations",
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
  "slug": "ofmulequivoflocalizations--5e5285fe3d539bca3ec63104",
  "source": {
    "blob": "fdcac8f4fe54684f8d660b4cb435d4d125082abd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 447,
    "path": "GRWTSK/Algebra/GroupTheory/Maps/Variantcc9390a4031a3fd2a2e369556bc8524c21bd1f85dfd94c9e7bb631a3722bcfea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e5285fe3d539bca3ec6310477b677fe20c3be90869da304d94ee5edc83f4279",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Maps/Variantcc9390a4031a3fd2a2e369556bc8524c21bd1f85dfd94c9e7bb631a3722bcfea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:546385eb22947e73bbbe587f7bfadbbc1e173cdf0a0b845c62dff0741a2ca85c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofMulEquivOfLocalizations (k : N ≃* P) : LocalizationMap S P :=
  (k.toMonoidHom.comp f.toMonoidHom).toLocalizationMap (fun y ↦ isUnit_comp f k.toMonoidHom y)
    (fun v ↦
      let ⟨z, hz⟩ := k.surjective v
      let ⟨x, hx⟩ := f.surj z
      ⟨x, show v * k (f _) = k (f _) by rw [← hx, map_mul, ← hz]⟩)
    fun x y ↦ (k.apply_eq_iff_eq.trans f.eq_iff_exists).1

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Maps/Variantcc9390a4031a3fd2a2e369556bc8524c21bd1f85dfd94c9e7bb631a3722bcfea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Maps/Variantcc9390a4031a3fd2a2e369556bc8524c21bd1f85dfd94c9e7bb631a3722bcfea.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdcac8f4fe54684f8d660b4cb435d4d125082abd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
