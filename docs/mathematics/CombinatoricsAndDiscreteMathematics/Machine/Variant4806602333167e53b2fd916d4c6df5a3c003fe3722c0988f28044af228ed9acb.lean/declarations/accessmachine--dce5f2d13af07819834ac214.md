# AccessMachine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86518f16b47703136bb668d5f9e49c176cf5fab98da92205a06854249d0f550d",
  "kind": "structure",
  "lexical_name": "AccessMachine",
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
  "slug": "accessmachine--dce5f2d13af07819834ac214",
  "source": {
    "blob": "759bb6b0d2224afff449a97c18c5277dfcccb20d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Machine/Variant4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dce5f2d13af07819834ac214334e4e86126947c6e6d7b77756e4eb06192b0c39",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Machine/Variant4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86518f16b47703136bb668d5f9e49c176cf5fab98da92205a06854249d0f550d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AccessMachine
    (G : GraphCut)
    {profiles : ModeProfileFamily G}
    (req : AdmittedAccessRequest G profiles)
    (outputs : ModeOutputFamily G req) where
  State : Type
  initial : State
  invariant : State → Prop
  initial_invariant : invariant initial
  usage : State → TraversalUsage
  initial_usage :
    usage initial = TraversalUsage.zero
  initial_within_budget :
    WithinBudget (usage initial) req.budget
  step :
    State →
      MachineStep
        (G := G)
        (profiles := profiles)
        (req := req)
        (outputs := outputs)
        State
  step_preserves :
    ∀ state next,
      invariant state →
      step state = .continue next →
      invariant next
  step_advances_one :
    ∀ state next,
      invariant state →
      step state = .continue next →
      (usage next).steps = (usage state).steps + 1
  usage_monotone :
    ∀ state next,
      invariant state →
      step state = .continue next →
      UsageMonotone (usage state) (usage next)
  frontier :
    State → ResidualCause → ResidualFrontier G req
  frontier_usage :
    ∀ state cause,
      (frontier state cause).usage = usage state
  frontier_sound :
    ∀ state cause,
      invariant state →
      (frontier state cause).summarySound
  encode : State → ByteArray
  decode : ByteArray → Option State
  decode_encode :
    ∀ state, decode (encode state) = some state
  decode_invariant :
    ∀ bytes state,
      decode bytes = some state →
      invariant state
  encoded_size_bound :
    ∀ state,
      (encode state).size ≤
        (usage state).persistedBytes
  stateDigest : State → StateDigest

namespace AccessMachine

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Machine/Variant4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Machine/Variant4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `759bb6b0d2224afff449a97c18c5277dfcccb20d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
