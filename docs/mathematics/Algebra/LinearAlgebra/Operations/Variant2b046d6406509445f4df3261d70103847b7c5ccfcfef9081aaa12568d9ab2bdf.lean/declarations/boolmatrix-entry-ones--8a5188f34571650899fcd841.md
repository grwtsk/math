# BoolMatrix.entry_ones

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad32d4ac-12fc-fcf9-fa02-54558e20ee9b",
  "kind": "theorem",
  "lexical_name": "BoolMatrix.entry_ones",
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
  "slug": "boolmatrix-entry-ones--8a5188f34571650899fcd841",
  "source": {
    "blob": "22eb0ef8cf70f25172bfac1daa1b7c3b1bb79d09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 56,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a5188f34571650899fcd8415707af28b535e6b9fa8466359e37977ae47990e6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad32d4ac-12fc-fcf9-fa02-54558e20ee9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem BoolMatrix.entry_ones
    (i : Fin rows)
    (j : Fin cols) :
    BoolMatrix.entry (BoolMatrix.ones : BoolMatrix rows cols) i j = true :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22eb0ef8cf70f25172bfac1daa1b7c3b1bb79d09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
