# decideActivation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ea6522eb9604eb47e811e8d448f373d05f7c96cf82e3b20e2cbbcab29ebee61",
  "kind": "def",
  "lexical_name": "decideActivation",
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
  "slug": "decideactivation--3c0e122243f7eeb96e8198d5",
  "source": {
    "blob": "a10eb1f9c640bf5af9904a1e9dffc96833d9d1c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 229,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variant98b3b119246d54f63a28271dd7c04f8b49cd21da0c600aacb2b6decbddf47375.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c0e122243f7eeb96e8198d51ebc28478afacc68609ae65f14046f6a200366a2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variant98b3b119246d54f63a28271dd7c04f8b49cd21da0c600aacb2b6decbddf47375.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ea6522eb9604eb47e811e8d448f373d05f7c96cf82e3b20e2cbbcab29ebee61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decideActivation (state : ServiceState) : ActivationDecision :=
  match state.refreshQueue with
  | [] => .noCandidate
  | candidate :: remaining =>
      if candidate.phase = .failed then
        .failed
      else if candidate.phase = .stale then
        .stale
      else if FreshFor state.active candidate then
        if ReadyForActivation candidate then
          .activate candidate remaining
        else
          .notReady
      else
        .stale

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variant98b3b119246d54f63a28271dd7c04f8b49cd21da0c600aacb2b6decbddf47375.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variant98b3b119246d54f63a28271dd7c04f8b49cd21da0c600aacb2b6decbddf47375.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a10eb1f9c640bf5af9904a1e9dffc96833d9d1c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
