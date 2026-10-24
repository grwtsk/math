# Set.finite_of_forall_not_lt_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69364b62-4750-0d56-e4a3-5fb6ac34462c",
  "kind": "lemma",
  "lexical_name": "Set.finite_of_forall_not_lt_lt",
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
  "slug": "set-finite-of-forall-not-lt-lt--0e31468d2b70eb082125e863",
  "source": {
    "blob": "91e9e74de56a472ce436c89dd0191da474ff2c9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1696,
    "line": 1692,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantc3baed49be8678c74b41d842bdcca1c064cfb979272e89361ffd6cbab786ba3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e31468d2b70eb082125e863b14834786dd285bb74091fa137188a48dacba826",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variantc3baed49be8678c74b41d842bdcca1c064cfb979272e89361ffd6cbab786ba3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69364b62-4750-0d56-e4a3-5fb6ac34462c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1692–1696.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Set.finite_of_forall_not_lt_lt (h : ∀ x ∈ s, ∀ y ∈ s, ∀ z ∈ s, x < y → y < z → False) :
    Set.Finite s :=
  @Set.toFinite _ s <| Finite.of_forall_not_lt_lt $ by simpa only [SetCoe.forall'] using h
#align set.finite_of_forall_not_lt_lt Set.finite_of_forall_not_lt_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variantc3baed49be8678c74b41d842bdcca1c064cfb979272e89361ffd6cbab786ba3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantc3baed49be8678c74b41d842bdcca1c064cfb979272e89361ffd6cbab786ba3f.lean#L1692).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91e9e74de56a472ce436c89dd0191da474ff2c9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
