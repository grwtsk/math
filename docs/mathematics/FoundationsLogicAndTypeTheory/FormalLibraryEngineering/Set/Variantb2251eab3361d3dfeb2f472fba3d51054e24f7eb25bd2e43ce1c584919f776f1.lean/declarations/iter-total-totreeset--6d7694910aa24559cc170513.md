# Iter.Total.toTreeSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:027352962b2fea555a6a11b693bd7803ad6038c73cdfabd3e53fd0fcbb92dcc1",
  "kind": "def",
  "lexical_name": "Iter.Total.toTreeSet",
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
  "slug": "iter-total-totreeset--6d7694910aa24559cc170513",
  "source": {
    "blob": "87d16cdcb8241208f364e0ce681b3e86e34e5554",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantb2251eab3361d3dfeb2f472fba3d51054e24f7eb25bd2e43ce1c584919f776f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d7694910aa24559cc17051359dab4c74d920dc01b6247dc9afbf11ff2532f37",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantb2251eab3361d3dfeb2f472fba3d51054e24f7eb25bd2e43ce1c584919f776f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:027352962b2fea555a6a11b693bd7803ad6038c73cdfabd3e53fd0fcbb92dcc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Iter.Total.toTreeSet {α β : Type w} [Iterator α Id β] [Finite α Id]
    [IteratorLoop α Id Id] (it : Total (α := α) β) (cmp : β → β → Ordering := by exact compare) :
    TreeSet β cmp :=
  it.it.toTreeSet cmp

docs_to_verso Iter.toTreeSet

set_option doc.verso false

/--
Traverses the given iterator and stores the emitted values in a {name}`ExtTreeSet`.

If the iterator is not finite, this function might run forever. Given {givenInstance}`Finite α Id`,
the variant {lean}`it.ensureTermination.toExtTreeSet cmp` always terminates after finitely many steps.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantb2251eab3361d3dfeb2f472fba3d51054e24f7eb25bd2e43ce1c584919f776f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantb2251eab3361d3dfeb2f472fba3d51054e24f7eb25bd2e43ce1c584919f776f1.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87d16cdcb8241208f364e0ce681b3e86e34e5554` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
