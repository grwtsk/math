# _root_.GRWTSK.Algebra.AlgebraAdjoinLeAdjoin.Variant27b6d6ef4374e63f20b0731883b026e0f4e5071baa21ea13c5f060122b512ca8.Field.fg_iff_essFiniteType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2473ab2d-8ae1-6feb-7a9a-ce2b6de66fee",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.AlgebraAdjoinLeAdjoin.Variant27b6d6ef4374e63f20b0731883b026e0f4e5071baa21ea13c5f060122b512ca8.Field.fg_iff_essFiniteType",
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
  "slug": "root-grwtsk-algebra-algebraadjoinleadjoin-variant27b6d6ef4374e63f20b0731--55efff0da7d7f43416f318b4",
  "source": {
    "blob": "e7b019d6ca75a64f2c853953afc928b35bf7a838",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 137,
    "path": "GRWTSK/Algebra/Algebra/Variant541f8a15f55b71d0f738a80ef315420e8f99bbae1e373c7887237deadc915962.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55efff0da7d7f43416f318b4a61c2d67965bf405b55cf5279357e39c59b38711",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant541f8a15f55b71d0f738a80ef315420e8f99bbae1e373c7887237deadc915962.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2473ab2d-8ae1-6feb-7a9a-ce2b6de66fee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.AlgebraAdjoinLeAdjoin.Variant27b6d6ef4374e63f20b0731883b026e0f4e5071baa21ea13c5f060122b512ca8.Field.fg_iff_essFiniteType : Field.FG F ↔ Algebra.EssFiniteType (⊥ : Subfield F) F :=
  Field.fg_iff_fg_top_bot.trans fg_top_iff

end FG

section AdjoinSimple

open Algebra

variable (α : E)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant541f8a15f55b71d0f738a80ef315420e8f99bbae1e373c7887237deadc915962.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant541f8a15f55b71d0f738a80ef315420e8f99bbae1e373c7887237deadc915962.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7b019d6ca75a64f2c853953afc928b35bf7a838` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
