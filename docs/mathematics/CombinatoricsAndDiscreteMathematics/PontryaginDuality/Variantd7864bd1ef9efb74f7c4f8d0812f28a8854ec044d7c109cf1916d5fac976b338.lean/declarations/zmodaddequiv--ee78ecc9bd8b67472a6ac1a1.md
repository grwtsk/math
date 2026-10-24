# zmodAddEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41c8ee47f745c7b34e4208b4fb76c4e6e82b3450ecd6701d9d7093c18f19a895",
  "kind": "def",
  "lexical_name": "zmodAddEquiv",
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
  "slug": "zmodaddequiv--ee78ecc9bd8b67472a6ac1a1",
  "source": {
    "blob": "82d70ca6c37e679d92264aea8ad41c715e589e7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee78ecc9bd8b67472a6ac1a118762dd453c46067cb902c10ff672f7905b02def",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41c8ee47f745c7b34e4208b4fb76c4e6e82b3450ecd6701d9d7093c18f19a895`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def zmodAddEquiv : ZMod n ≃+ AddChar (ZMod n) ℂ := by
  refine AddEquiv.ofBijective
    (circleEquivComplex.toAddMonoidHom.comp <| AddChar.toAddMonoidHom zmodHom) ?_
  rw [Fintype.bijective_iff_injective_and_card, card_eq]
  exact ⟨circleEquivComplex.injective.comp zmod_injective, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82d70ca6c37e679d92264aea8ad41c715e589e7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
