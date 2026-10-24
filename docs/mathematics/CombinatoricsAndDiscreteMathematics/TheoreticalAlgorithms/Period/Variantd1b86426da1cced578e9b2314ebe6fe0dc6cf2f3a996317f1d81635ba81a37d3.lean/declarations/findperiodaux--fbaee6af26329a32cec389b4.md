# findPeriodAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03622c29924c91d03b95bcc3a7289fc25afc34b0accdb6a16e6be3762409d172",
  "kind": "def",
  "lexical_name": "findPeriodAux",
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
  "slug": "findperiodaux--fbaee6af26329a32cec389b4",
  "source": {
    "blob": "0d139a4e08335791b44f36377d19536a2520f3ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 28,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantd1b86426da1cced578e9b2314ebe6fe0dc6cf2f3a996317f1d81635ba81a37d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbaee6af26329a32cec389b4a5a43e2345e20262077b3c7755d16104a55d3da6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantd1b86426da1cced578e9b2314ebe6fe0dc6cf2f3a996317f1d81635ba81a37d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03622c29924c91d03b95bcc3a7289fc25afc34b0accdb6a16e6be3762409d172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def findPeriodAux (P Q : Int) (m : Nat) : Nat → Nat → Int × Int → Nat
  | 0, _, _ => 0  -- ran out of fuel
  | fuel + 1, n, (u, u') =>
    let u_next := (P * u' - Q * u) % m
    let n' := n + 1
    -- Period found when (U_n', U_{n'+1}) ≡ (0, 1) mod m
    if u' % m == 0 && u_next % m == 1 % m then n'
    else findPeriodAux P Q m fuel n' (u' % m, u_next)

/-- Find the Pisano period `π_{P,Q}(m)` by brute-force iteration.
Searches up to `m² + 1` steps (sufficient for all known cases).
Returns `0` if the period is not found (shouldn't happen for valid inputs). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantd1b86426da1cced578e9b2314ebe6fe0dc6cf2f3a996317f1d81635ba81a37d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantd1b86426da1cced578e9b2314ebe6fe0dc6cf2f3a996317f1d81635ba81a37d3.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d139a4e08335791b44f36377d19536a2520f3ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
