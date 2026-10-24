# fg_ker_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5eb25c1f587e0789132022a89807a5d56e9f23c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 482,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32ee82f68a7c5d9a26f41554ec6ae1211325fb58cc8c0fdabf47e3943a442bea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59473bc2-91f9-ba0c-e77e-e94048105266",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dcabcf33-a0a5-4bf6-5d5d-9312a8c35069",
  "kind": "theorem",
  "lexical_name": "fg_ker_comp",
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
  "slug": "fg-ker-comp--4e3e4d238c4035232a396fbd",
  "source": {
    "blob": "5eb25c1f587e0789132022a89807a5d56e9f23c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 482,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant32ee82f68a7c5d9a26f41554ec6ae1211325fb58cc8c0fdabf47e3943a442bea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e3e4d238c4035232a396fbd474f97b9edf81fbce32882aa65c5372116ae8709",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variant32ee82f68a7c5d9a26f41554ec6ae1211325fb58cc8c0fdabf47e3943a442bea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcabcf33-a0a5-4bf6-5d5d-9312a8c35069`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fg_ker_comp {R S A : Type*} [CommRing R] [CommRing S] [CommRing A] (f : R →+* S)
    (g : S →+* A) (hf : f.ker.FG) (hg : g.ker.FG) (hsur : Function.Surjective f) :
    (g.comp f).ker.FG := by
  letI : Algebra R S := RingHom.toAlgebra f
  letI : Algebra R A := RingHom.toAlgebra (g.comp f)
  letI : Algebra S A := RingHom.toAlgebra g
  letI : IsScalarTower R S A := IsScalarTower.of_algebraMap_eq fun _ => rfl
  let f₁ := Algebra.linearMap R S
  let g₁ := (IsScalarTower.toAlgHom R S A).toLinearMap
  exact Submodule.fg_ker_comp f₁ g₁ hf (Submodule.fg_restrictScalars (RingHom.ker g) hg hsur) hsur
#align ideal.fg_ker_comp Ideal.fg_ker_comp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variant32ee82f68a7c5d9a26f41554ec6ae1211325fb58cc8c0fdabf47e3943a442bea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant32ee82f68a7c5d9a26f41554ec6ae1211325fb58cc8c0fdabf47e3943a442bea.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eb25c1f587e0789132022a89807a5d56e9f23c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
