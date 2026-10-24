# hasCoeToOplax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5088052aadb6ad51790402e48a19a55aec8176c31e73ebc52e77419524acbe51",
  "kind": "instance",
  "lexical_name": "hasCoeToOplax",
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
  "slug": "hascoetooplax--831cd467c4d14d3b48bbb1c5",
  "source": {
    "blob": "30119d7a1cfe30e85b924814d58d928eee81bd8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 87,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:831cd467c4d14d3b48bbb1c5935e0c4905cfd4e2b7edd2bcd20e7a286419e246",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5088052aadb6ad51790402e48a19a55aec8176c31e73ebc52e77419524acbe51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasCoeToOplax : Coe (StrongTrans F G) (Oplax.StrongTrans F.toOplax G.toOplax) :=
  ⟨toOplax⟩

/-- Construct a strong transformation of pseudofunctors from a strong transformation of the
underlying oplax functors. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd119044bf6d65c3731980b72e93ace391ceb7a29d586b842b9ef8ee8c717f749.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30119d7a1cfe30e85b924814d58d928eee81bd8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
