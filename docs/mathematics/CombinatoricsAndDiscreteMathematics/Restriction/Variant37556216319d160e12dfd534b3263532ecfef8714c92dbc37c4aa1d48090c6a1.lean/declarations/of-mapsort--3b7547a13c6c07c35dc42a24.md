# of_mapSort

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fee5f29e-6a6d-88d6-6b8b-906279cf4f16",
  "kind": "theorem",
  "lexical_name": "of_mapSort",
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
  "slug": "of-mapsort--3b7547a13c6c07c35dc42a24",
  "source": {
    "blob": "0f3b491e97249afd822bde8ecf807274c5941f74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 134,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variant37556216319d160e12dfd534b3263532ecfef8714c92dbc37c4aa1d48090c6a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b7547a13c6c07c35dc42a246dd2fb3069311ab8f54abbcbd50a48997541f23d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Restriction/Variant37556216319d160e12dfd534b3263532ecfef8714c92dbc37c4aa1d48090c6a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fee5f29e-6a6d-88d6-6b8b-906279cf4f16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_mapSort (f : S → T) {M : Expr S} (h : StronglyNormalizing (M.mapSort f)) :
    StronglyNormalizing M := by
  have aux : ∀ N : Expr T, StronglyNormalizing N →
      ∀ M : Expr S, M.mapSort f = N → StronglyNormalizing M := by
    intro N hN
    induction hN with
    | intro N hN ih =>
        intro M he
        subst N
        refine Acc.intro M ?_
        intro M' hM'
        exact ih (M'.mapSort f) (hM'.mapSort f) M' rfl
  exact aux _ h M rfl

end StronglyNormalizing

namespace WeaklyNormalizing

variable {S T : Type u}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Restriction/Variant37556216319d160e12dfd534b3263532ecfef8714c92dbc37c4aa1d48090c6a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variant37556216319d160e12dfd534b3263532ecfef8714c92dbc37c4aa1d48090c6a1.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f3b491e97249afd822bde8ecf807274c5941f74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
