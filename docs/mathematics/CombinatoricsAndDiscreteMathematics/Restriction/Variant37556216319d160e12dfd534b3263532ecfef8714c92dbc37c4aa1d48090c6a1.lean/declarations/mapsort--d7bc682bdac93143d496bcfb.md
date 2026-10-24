# mapSort

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd2548d7-a6f8-a50f-8caf-2226cf92c69c",
  "kind": "theorem",
  "lexical_name": "mapSort",
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
  "slug": "mapsort--d7bc682bdac93143d496bcfb",
  "source": {
    "blob": "0f3b491e97249afd822bde8ecf807274c5941f74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variant37556216319d160e12dfd534b3263532ecfef8714c92dbc37c4aa1d48090c6a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7bc682bdac93143d496bcfb03f3c6e99c8bd81472b3d9539262ee6c53a3e34c",
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

Occurrence: `result:cd2548d7-a6f8-a50f-8caf-2226cf92c69c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapSort (h : Beta M N) (f : S → T) : Beta (M.mapSort f) (N.mapSort f) := by
  induction h with
  | head A b a =>
      simpa only [Expr.mapSort, Expr.mapSort_instantiate] using
        (Beta.head (A.mapSort f) (b.mapSort f) (a.mapSort f))
  | app_left _ ih => exact .app_left ih
  | app_right _ ih => exact .app_right ih
  | lam_domain _ ih => exact .lam_domain ih
  | lam_body _ ih => exact .lam_body ih
  | pi_domain _ ih => exact .pi_domain ih
  | pi_body _ ih => exact .pi_body ih

end Beta

namespace Reduces

variable {S T : Type u} {M N : Expr S}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Restriction/Variant37556216319d160e12dfd534b3263532ecfef8714c92dbc37c4aa1d48090c6a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variant37556216319d160e12dfd534b3263532ecfef8714c92dbc37c4aa1d48090c6a1.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f3b491e97249afd822bde8ecf807274c5941f74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
