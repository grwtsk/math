# Decidable.iff_congr_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9da9f10-0c68-1f7f-b28d-a353e8d88c4d",
  "kind": "theorem",
  "lexical_name": "Decidable.iff_congr_right",
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
  "slug": "decidable-iff-congr-right--3cbde6760e012f1237c39aca",
  "source": {
    "blob": "dd93b12bfc5faea13e8854d0c98e2bf195703c85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 633,
    "line": 626,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropLemmas/Variantf57e74ac87489d1dc42b28b55670ee6c69343b0344632f0ae77f95aa5e43ff9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cbde6760e012f1237c39acacf895662eac385149bfa7c611680a0edef19e693",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PropLemmas/Variantf57e74ac87489d1dc42b28b55670ee6c69343b0344632f0ae77f95aa5e43ff9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9da9f10-0c68-1f7f-b28d-a353e8d88c4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 626–633.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem Decidable.iff_congr_right {P Q R : Prop} [Decidable P] [Decidable Q] [Decidable R] :
    ((P ↔ Q) ↔ (P ↔ R)) ↔ (Q ↔ R) :=
  if h : P then by simp_all else by simp_all [Decidable.not_iff_not]

/-- Transfer decidability of `a` to decidability of `b`, if the propositions are equivalent.
**Important**: this function should be used instead of `rw` on `Decidable b`, because the
kernel will get stuck reducing the usage of `propext` otherwise,
and `decide` will not work. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PropLemmas/Variantf57e74ac87489d1dc42b28b55670ee6c69343b0344632f0ae77f95aa5e43ff9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropLemmas/Variantf57e74ac87489d1dc42b28b55670ee6c69343b0344632f0ae77f95aa5e43ff9b.lean#L626).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd93b12bfc5faea13e8854d0c98e2bf195703c85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
