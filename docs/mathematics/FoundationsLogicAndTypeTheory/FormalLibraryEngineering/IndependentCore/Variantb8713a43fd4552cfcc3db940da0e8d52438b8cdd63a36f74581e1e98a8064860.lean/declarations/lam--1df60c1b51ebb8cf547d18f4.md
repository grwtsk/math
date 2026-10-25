# lam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fefab90c-a69f-d7a1-4503-e3f8c0b8549b",
  "kind": "theorem",
  "lexical_name": "lam",
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
  "slug": "lam--1df60c1b51ebb8cf547d18f4",
  "source": {
    "blob": "fb94fd0dd3480169ef53bd8bba3ae8ec2131f268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1499,
    "line": 1486,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantb8713a43fd4552cfcc3db940da0e8d52438b8cdd63a36f74581e1e98a8064860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1df60c1b51ebb8cf547d18f47ba7e618e5badad556b8fedc8cbad80f2df6a6a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantb8713a43fd4552cfcc3db940da0e8d52438b8cdd63a36f74581e1e98a8064860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fefab90c-a69f-d7a1-4503-e3f8c0b8549b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1486–1499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lam {A b : Expr S} (hA : Normal A) (hb : Normal b) : Normal (.lam A b) := by
  intro N h
  cases h with
  | lam_domain h => exact hA _ h
  | lam_body h => exact hb _ h

end Normal

namespace Expr

variable {S : Type u}

/-- Choice of the unique full beta normal form when it exists. The fallback
is irrelevant on legal syntax under the standing system-wide WN hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantb8713a43fd4552cfcc3db940da0e8d52438b8cdd63a36f74581e1e98a8064860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantb8713a43fd4552cfcc3db940da0e8d52438b8cdd63a36f74581e1e98a8064860.lean#L1486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb94fd0dd3480169ef53bd8bba3ae8ec2131f268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
