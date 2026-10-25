# divExact_eq_ediv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f0076e4-1393-e50c-9f8b-e9c104fcda2b",
  "kind": "theorem",
  "lexical_name": "divExact_eq_ediv",
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
  "slug": "divexact-eq-ediv--77feb123a8532e15dd83b982",
  "source": {
    "blob": "bd2d2dfa53779352fb61e70286aaee77372692cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant47635f2f2500a8ea2347bae1f43b1d84b9708a621361d73822b1c3bb6fa8feda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77feb123a8532e15dd83b98267e12206090bf04189a67e02f1f2f624c8ca6fda",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant47635f2f2500a8ea2347bae1f43b1d84b9708a621361d73822b1c3bb6fa8feda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f0076e4-1393-e50c-9f8b-e9c104fcda2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divExact_eq_ediv {x y : Int} (h : y ∣ x) : x.divExact y h = x / y := rfl

/-! ### T-rounding division -/

/--
Integer division using the T-rounding convention.

In [the T-rounding convention][t-rounding] (division with truncation), all rounding is towards zero.
Division by 0 is defined to be 0. In this convention, `Int.tmod a b + b * (Int.tdiv a b) = a`.

[t-rounding]: https://dl.acm.org/doi/pdf/10.1145/128861.128862

This function is overridden by the compiler with an efficient implementation. This definition is the
logical model.

Examples:
* `(7 : Int).tdiv (0 : Int) = 0`
* `(0 : Int).tdiv (7 : Int) = 0`
* `(12 : Int).tdiv (6 : Int) = 2`
* `(12 : Int).tdiv (-6 : Int) = -2`
* `(-12 : Int).tdiv (6 : Int) = -2`
* `(-12 : Int).tdiv (-6 : Int) = 2`
* `(12 : Int).tdiv (7 : Int) = 1`
* `(12 : Int).tdiv (-7 : Int) = -1`
* `(-12 : Int).tdiv (7 : Int) = -1`
* `(-12 : Int).tdiv (-7 : Int) = 1`
-/
@[extern "lean_int_div", implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant47635f2f2500a8ea2347bae1f43b1d84b9708a621361d73822b1c3bb6fa8feda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant47635f2f2500a8ea2347bae1f43b1d84b9708a621361d73822b1c3bb6fa8feda.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd2d2dfa53779352fb61e70286aaee77372692cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
