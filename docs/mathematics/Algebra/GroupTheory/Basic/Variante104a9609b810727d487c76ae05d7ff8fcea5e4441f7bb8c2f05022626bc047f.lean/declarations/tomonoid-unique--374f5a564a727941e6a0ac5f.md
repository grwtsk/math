# toMonoid.unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:918ff7b6-c174-7567-33b4-38960cdb6617",
  "kind": "theorem",
  "lexical_name": "toMonoid.unique",
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
  "slug": "tomonoid-unique--374f5a564a727941e6a0ac5f",
  "source": {
    "blob": "8aac935b9e8a3f7a4c3c7d7a81ca6d728888aa46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 131,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:374f5a564a727941e6a0ac5f316d3fdfc38d1e6224e4097a82364045279caefe",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:918ff7b6-c174-7567-33b4-38960cdb6617`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toMonoid.unique (g : MonoidHom (conGen rels).Quotient M)
    (hg : ∀ a : α, g (of rels a) = f a) : g = lift f h :=
  Con.lift_unique (Con.conGen_le h) g (FreeMonoid.hom_eq fun x ↦ let_fun this := hg x; this)

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aac935b9e8a3f7a4c3c7d7a81ca6d728888aa46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
