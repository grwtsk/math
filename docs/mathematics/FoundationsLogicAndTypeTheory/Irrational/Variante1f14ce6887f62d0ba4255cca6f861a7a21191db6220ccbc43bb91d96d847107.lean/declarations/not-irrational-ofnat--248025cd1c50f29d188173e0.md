# not_irrational_ofNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f7785de-0712-e62e-2400-657bb401c9da",
  "kind": "theorem",
  "lexical_name": "not_irrational_ofNat",
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
  "slug": "not-irrational-ofnat--248025cd1c50f29d188173e0",
  "source": {
    "blob": "00ff3bfece4a3c7ce0500392ba4210b718996c4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 198,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Irrational/Variante1f14ce6887f62d0ba4255cca6f861a7a21191db6220ccbc43bb91d96d847107.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:248025cd1c50f29d188173e01e38935016d533e8ed89b44f4d420b8be1cbc5a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Irrational/Variante1f14ce6887f62d0ba4255cca6f861a7a21191db6220ccbc43bb91d96d847107.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f7785de-0712-e62e-2400-657bb401c9da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem not_irrational_ofNat (n : ℕ) [n.AtLeastTwo] : ¬Irrational ofNat(n) :=
  n.not_irrational
namespace Irrational

variable (q : ℚ) {x y : ℝ}

/-!
#### Addition of rational/integer/natural numbers
-/


/-- If `x + y` is irrational, then at least one of `x` and `y` is irrational. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Irrational/Variante1f14ce6887f62d0ba4255cca6f861a7a21191db6220ccbc43bb91d96d847107.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Irrational/Variante1f14ce6887f62d0ba4255cca6f861a7a21191db6220ccbc43bb91d96d847107.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00ff3bfece4a3c7ce0500392ba4210b718996c4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
