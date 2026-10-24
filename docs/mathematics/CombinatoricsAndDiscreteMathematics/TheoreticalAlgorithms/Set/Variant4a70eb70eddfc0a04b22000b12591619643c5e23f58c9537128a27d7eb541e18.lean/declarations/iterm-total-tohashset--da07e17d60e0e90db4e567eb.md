# IterM.Total.toHashSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9dbb59eb37aed297928a6ab18504f10b1ae06a23dbdff220e2c7a6f67ef53265",
  "kind": "def",
  "lexical_name": "IterM.Total.toHashSet",
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
  "slug": "iterm-total-tohashset--da07e17d60e0e90db4e567eb",
  "source": {
    "blob": "0eed5a4220cec05db415a0cb0da5b1bfa100ccd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da07e17d60e0e90db4e567eb99b753391f46fc376ac1473c6e9d1f5a6fa3973e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9dbb59eb37aed297928a6ab18504f10b1ae06a23dbdff220e2c7a6f67ef53265`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def IterM.Total.toHashSet {α β : Type w} [BEq β] [Hashable β] {m : Type w → Type w'} [Monad m]
    [Iterator α m β] [Finite α m] [IteratorLoop α m m] (it : IterM.Total (α := α) m β) :
    m (HashSet β) :=
  it.it.toHashSet

docs_to_verso IterM.toHashSet

set_option doc.verso false

/--
Traverses the given iterator and stores the emitted values in a {name}`ExtHashSet`.

If the iterator is not finite, this function might run forever. Given {givenInstance}`Finite α m`,
the variant {lean}`it.ensureTermination.toExtHashSet` always terminates after finitely many steps.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eed5a4220cec05db415a0cb0da5b1bfa100ccd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
