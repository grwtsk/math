# transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcf796949a3f51052bd1352c88fe69ada812b7c36c39b5d96b4d06ef5d7b23b0",
  "kind": "def",
  "lexical_name": "transport",
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
  "slug": "transport--25e7453ac91be0a2873a315d",
  "source": {
    "blob": "4325e920fc1439dc74e55ade57940e4012df800f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 25,
    "path": "GRWTSK/Analysis/Operator/HolomorphicLineGaugePort.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25e7453ac91be0a2873a315ddfcfecc8297a8560610ed1ccf96e534961949153",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/HolomorphicLineGaugePort.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcf796949a3f51052bd1352c88fe69ada812b7c36c39b5d96b4d06ef5d7b23b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transport (G : Gauge C E) (A : CompatibleOperators C) : CompatibleOperators E where
  localOp i z := (unitValue (G.frame i) z • ContinuousLinearMap.id ℂ ℂ).comp
    ((A.localOp i z).comp (unitValue (G.frame i)⁻¹ z • ContinuousLinearMap.id ℂ ℂ))
  intertwines := by
    intro i j x hi hj a
    let u := unitValue (G.frame i) ⟨x.1, hi⟩
    let u' := unitValue (G.frame i)⁻¹ ⟨x.1, hi⟩
    let v := unitValue (G.frame j) ⟨x.1, hj⟩
    let v' := unitValue (G.frame j)⁻¹ ⟨x.1, hj⟩
    have hg : v * C.scalar i j x = E.scalar i j x * u := G.compatible i j x hi hj
    have hg' : v' * E.scalar i j x = C.scalar i j x * u' :=
      G.symm.compatible i j x hi hj
    change v * A.localOp j ⟨x.1, hj⟩ (v' * (E.scalar i j x * a)) =
      E.scalar i j x * (u * A.localOp i ⟨x.1, hi⟩ (u' * a))
    rw [← mul_assoc v' (E.scalar i j x) a, hg', mul_assoc,
      A.intertwines i j x hi hj (u' * a), ← mul_assoc, hg, mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/HolomorphicLineGaugePort.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/HolomorphicLineGaugePort.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4325e920fc1439dc74e55ade57940e4012df800f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
