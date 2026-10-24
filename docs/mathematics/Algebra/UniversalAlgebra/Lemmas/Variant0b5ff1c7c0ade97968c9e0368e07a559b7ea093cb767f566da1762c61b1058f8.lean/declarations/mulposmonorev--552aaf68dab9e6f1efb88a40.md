# MulPosMonoRev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06ad91c4cc979c8794c744cc29ed849d1e66820aa4ac0c2b948ccec14f23d6a0",
  "kind": "abbrev",
  "lexical_name": "MulPosMonoRev",
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
  "slug": "mulposmonorev--552aaf68dab9e6f1efb88a40",
  "source": {
    "blob": "16741e9fa7ce764314f962730315f0a83954df1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 116,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant0b5ff1c7c0ade97968c9e0368e07a559b7ea093cb767f566da1762c61b1058f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:552aaf68dab9e6f1efb88a4022e083d46910c0fe9fdc3999d24a8b0bf5823db3",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Lemmas/Variant0b5ff1c7c0ade97968c9e0368e07a559b7ea093cb767f566da1762c61b1058f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06ad91c4cc979c8794c744cc29ed849d1e66820aa4ac0c2b948ccec14f23d6a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev MulPosMonoRev : Prop :=
  ContravariantClass α>0 α (fun x y => y * x) (· ≤ ·)
#align mul_pos_mono_rev MulPosMonoRev

end Abbreviations

variable {α} {a b c d : α}

section MulZero

variable [Mul α] [Zero α]

section Preorder

variable [Preorder α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Lemmas/Variant0b5ff1c7c0ade97968c9e0368e07a559b7ea093cb767f566da1762c61b1058f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant0b5ff1c7c0ade97968c9e0368e07a559b7ea093cb767f566da1762c61b1058f8.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16741e9fa7ce764314f962730315f0a83954df1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
