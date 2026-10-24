# _root_.GRWTSK.Algebra.NonUnitalStarSubalgebra.Variant568d3331d3596a45bd2b60b763aee245ea0ea09b164f84bfd13c7510bd04805a.NonUnitalStarAlgHom.subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3b57725bcd9896af38cd0a2e3213359e286836e59c0ed75e04422db519062b6",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.Algebra.NonUnitalStarSubalgebra.Variant568d3331d3596a45bd2b60b763aee245ea0ea09b164f84bfd13c7510bd04805a.NonUnitalStarAlgHom.subsingleton",
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
  "slug": "root-grwtsk-algebra-nonunitalstarsubalgebra-variant568d3331d3596a45bd2b6--0b34bde7938079f80c2e1a93",
  "source": {
    "blob": "2c2cc44baaf756c6950c625a00e1cae111236d6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 929,
    "line": 917,
    "path": "GRWTSK/Algebra/NonUnitalSubalgebra/Variant4f6d7d5c4837e7b9895a7e617d66fcdcac8f946d5f123781ea7d3475977a1934.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b34bde7938079f80c2e1a9310799cd67d698e401b09ac25815a89d835b9d175",
  "verification": {
    "reference": "docs/verification/Algebra/NonUnitalSubalgebra/Variant4f6d7d5c4837e7b9895a7e617d66fcdcac8f946d5f123781ea7d3475977a1934.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3b57725bcd9896af38cd0a2e3213359e286836e59c0ed75e04422db519062b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 917–929.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.GRWTSK.Algebra.NonUnitalStarSubalgebra.Variant568d3331d3596a45bd2b60b763aee245ea0ea09b164f84bfd13c7510bd04805a.NonUnitalStarAlgHom.subsingleton [Subsingleton (NonUnitalStarSubalgebra R A)] :
    Subsingleton (A →⋆ₙₐ[R] B) :=
  ⟨fun f g => NonUnitalStarAlgHom.ext fun a =>
    have : a ∈ (⊥ : NonUnitalStarSubalgebra R A) :=
      Subsingleton.elim (⊤ : NonUnitalStarSubalgebra R A) ⊥ ▸ mem_top
    (mem_bot.mp this).symm ▸ (map_zero f).trans (map_zero g).symm⟩

/--
The map `S → T` when `S` is a non-unital star subalgebra contained in the non-unital star
algebra `T`.

This is the non-unital star subalgebra version of `Submodule.inclusion`, or
`NonUnitalSubalgebra.inclusion` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NonUnitalSubalgebra/Variant4f6d7d5c4837e7b9895a7e617d66fcdcac8f946d5f123781ea7d3475977a1934.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NonUnitalSubalgebra/Variant4f6d7d5c4837e7b9895a7e617d66fcdcac8f946d5f123781ea7d3475977a1934.lean#L917).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c2cc44baaf756c6950c625a00e1cae111236d6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
