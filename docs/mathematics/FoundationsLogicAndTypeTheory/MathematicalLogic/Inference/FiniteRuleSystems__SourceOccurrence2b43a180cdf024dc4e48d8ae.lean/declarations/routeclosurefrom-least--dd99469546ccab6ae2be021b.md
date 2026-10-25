# routeClosureFrom_least

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cd1ea4c-7221-f70b-c6bc-7849e0026b05",
  "kind": "theorem",
  "lexical_name": "routeClosureFrom_least",
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
  "slug": "routeclosurefrom-least--dd99469546ccab6ae2be021b",
  "source": {
    "blob": "4c3ad70ed39e32b1260d4d0496cd6362583629c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd99469546ccab6ae2be021b7c62ba28077db3cbb4197a1c608993d47fa5fa4c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cd1ea4c-7221-f70b-c6bc-7849e0026b05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem routeClosureFrom_least (routes : Provider → ProofRoute Claim)
    (eligible : Finset Provider) (claims : Finset Claim) {closedClaims : Finset Claim}
    (contained : claims ⊆ closedClaims) (closed : SupportClosed routes eligible closedClaims) :
    routeClosureFrom routes eligible claims ⊆ closedClaims := by
  induction claims using routeClosureFrom.induct routes eligible with
  | case1 claims h => simpa [routeClosureFrom, h] using contained
  | case2 claims h ih =>
    rw [routeClosureFrom, dif_neg h]
    apply ih
    intro claim member
    rcases (mem_supportStep routes eligible claims claim).mp member with member |
      ⟨provider, admitted, conclusion, premises⟩
    · exact contained member
    · exact conclusion ▸ closed provider admitted (premises.trans contained)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrence2b43a180cdf024dc4e48d8ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c3ad70ed39e32b1260d4d0496cd6362583629c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
