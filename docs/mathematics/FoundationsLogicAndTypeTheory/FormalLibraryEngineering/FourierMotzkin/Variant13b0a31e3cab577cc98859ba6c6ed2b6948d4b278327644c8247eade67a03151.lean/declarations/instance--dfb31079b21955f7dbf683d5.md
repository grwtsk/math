# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57fe871389e3ad8df01fb328bf20d392abeebe07e8054d454d25a50b27c78638",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--dfb31079b21955f7dbf683d5",
  "source": {
    "blob": "f4fe808c4c6ada79cabb2e085c2a7df8a8afb5a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant13b0a31e3cab577cc98859ba6c6ed2b6948d4b278327644c8247eade67a03151.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfb31079b21955f7dbf683d595089174190934e76cad0ba11e9ed88887c56799",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant13b0a31e3cab577cc98859ba6c6ed2b6948d4b278327644c8247eade67a03151.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57fe871389e3ad8df01fb328bf20d392abeebe07e8054d454d25a50b27c78638`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ToFormat CompSource :=
  ⟨fun a => CompSource.toString a⟩

/--
A `PComp` stores a linear comparison `Σ cᵢ*xᵢ R 0`,
along with information about how this comparison was derived.
The original expressions fed into `linarith` are each assigned a unique natural number label.
The *historical set* `PComp.history` stores the labels of expressions
that were used in deriving the current `PComp`.
Variables are also indexed by natural numbers. The sets `PComp.effective`, `PComp.implicit`,
and `PComp.vars` contain variable indices.
* `PComp.vars` contains the variables that appear in any inequality in the historical set.
* `PComp.effective` contains the variables that have been effectively eliminated from `PComp`.
  A variable `n` is said to be *effectively eliminated* in `p : PComp` if the elimination of `n`
  produced at least one of the ancestors of `p` (or `p` itself).
* `PComp.implicit` contains the variables that have been implicitly eliminated from `PComp`.
  A variable `n` is said to be *implicitly eliminated* in `p` if it satisfies the following
  properties:
  - `n` appears in some inequality in the historical set (i.e. in `p.vars`).
  - `n` does not appear in `p.c.vars` (i.e. it has been eliminated).
  - `n` was not effectively eliminated.

We track these sets in order to compute whether the history of a `PComp` is *minimal*.
Checking this directly is expensive, but effective approximations can be defined in terms of these
sets. During the variable elimination process, a `PComp` with non-minimal history can be discarded.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant13b0a31e3cab577cc98859ba6c6ed2b6948d4b278327644c8247eade67a03151.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant13b0a31e3cab577cc98859ba6c6ed2b6948d4b278327644c8247eade67a03151.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4fe808c4c6ada79cabb2e085c2a7df8a8afb5a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
