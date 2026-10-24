# _root_.GRWTSK.Algebra.IsLocalHomId.Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.IsLocalHom.of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:177e3a68-0a88-6b31-40ee-6ed606685fcb",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.IsLocalHomId.Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.IsLocalHom.of_surjective",
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
  "slug": "root-grwtsk-algebra-islocalhomid-variant1d4ec2e70af5ae48287eb10964313879--58c2c35ff198ee23dbc2afb3",
  "source": {
    "blob": "961bd3f0d9d367bee34d4d22bb872e702486515a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 114,
    "path": "GRWTSK/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58c2c35ff198ee23dbc2afb356dd3d3592b02c193aa5d70373a5f136ff3b8dff",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:177e3a68-0a88-6b31-40ee-6ed606685fcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.IsLocalHomId.Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.IsLocalHom.of_surjective [CommRing R] [CommRing S] [Nontrivial S] [IsLocalRing R]
    (f : R →+* S) (hf : Function.Surjective f) :
    IsLocalHom f := by
  have := IsLocalRing.of_surjective' f ‹_›
  refine ((local_hom_TFAE f).out 3 0).mp ?_
  have := Ideal.comap_isMaximal_of_surjective f hf (K := maximalIdeal S)
  exact ((maximal_ideal_unique R).unique (inferInstanceAs (maximalIdeal R).IsMaximal) this).le

alias _root_.Function.Surjective.isLocalHom := _root_.GRWTSK.Algebra.IsLocalHomId.Variant1d4ec2e70af5ae48287eb1096431387926cb6cede1685da2241e0c233e82715a.IsLocalHom.of_surjective

/-- If `f : R →+* S` is a surjective local ring hom, then the induced units map is surjective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant01257656aa88e1c05c7df6ffce685d6a48aeacb03affd29d1a195f86601816b2.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `961bd3f0d9d367bee34d4d22bb872e702486515a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
