# Rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0ada621fe2b959acf86bf5404ae3df7aecc99c49cd6a60c803e5cef80b99843",
  "kind": "inductive",
  "lexical_name": "Rel",
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
  "slug": "rel--4cc0f8edda812f5c106f3d66",
  "source": {
    "blob": "2920eb99908f320fbd338d5d5f2b39bf6faf4719",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 502,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantb8fe2c8f7e3f6f9899c40a3667343bc6d25e9aea2f032a684e99c8d2e6d4921d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cc0f8edda812f5c106f3d6668e95d00cdbd198853ecf7925bdc52a393259132",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantb8fe2c8f7e3f6f9899c40a3667343bc6d25e9aea2f032a684e99c8d2e6d4921d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0ada621fe2b959acf86bf5404ae3df7aecc99c49cd6a60c803e5cef80b99843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Rel (r : α → β → Prop) : Multiset α → Multiset β → Prop
  | zero : Rel r 0 0
  | cons {a b as bs} : r a b → Rel r as bs → Rel r (a ::ₘ as) (b ::ₘ bs)

variable {δ : Type*} {r : α → β → Prop} {p : γ → δ → Prop}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantb8fe2c8f7e3f6f9899c40a3667343bc6d25e9aea2f032a684e99c8d2e6d4921d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantb8fe2c8f7e3f6f9899c40a3667343bc6d25e9aea2f032a684e99c8d2e6d4921d.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2920eb99908f320fbd338d5d5f2b39bf6faf4719` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
