# NormedGroup.ofSeparation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1957db751b908bc1f7c3a9c973127631267149413e5cbd0b92e2c6f6f7c5ec3c",
  "kind": "def",
  "lexical_name": "NormedGroup.ofSeparation",
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
  "slug": "normedgroup-ofseparation--d44bd15b95be17dc57f6a5df",
  "source": {
    "blob": "c700082d1a0bf4ea8779800957d94d938ec63c17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d44bd15b95be17dc57f6a5df84f543976f7e9c9d12550a9c05dad5fbd0c9de61",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1957db751b908bc1f7c3a9c973127631267149413e5cbd0b92e2c6f6f7c5ec3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NormedGroup.ofSeparation [SeminormedGroup E] (h : ∀ x : E, ‖x‖ = 0 → x = 1) : NormedGroup E :=
  { ‹SeminormedGroup E› with
    toMetricSpace :=
      { eq_of_dist_eq_zero := fun hxy =>
          div_eq_one.1 <| h _ <| by exact (‹SeminormedGroup E›.dist_eq _ _).symm.trans hxy } }
        -- porting note: the `rwa` no longer worked, but it was easy enough to provide the term.
        -- however, notice that if you make `x` and `y` accessible, then the following does work:
        -- `have := ‹SeminormedGroup E›.dist_eq x y; rwa [←this]`, so I'm not sure why the `rwa`
        -- was broken.
#align normed_group.of_separation NormedGroup.ofSeparation
#align normed_add_group.of_separation NormedAddGroup.ofSeparation

-- See note [reducible non-instances]
/-- Construct a `NormedCommGroup` from a `SeminormedCommGroup` satisfying
`∀ x, ‖x‖ = 0 → x = 1`. This avoids having to go back to the `(Pseudo)MetricSpace` level when
declaring a `NormedCommGroup` instance as a special case of a more general `SeminormedCommGroup`
instance. -/
@[to_additive (attr := reducible) "Construct a `NormedAddCommGroup` from a
`SeminormedAddCommGroup` satisfying `∀ x, ‖x‖ = 0 → x = 0`. This avoids having to go back to the
`(Pseudo)MetricSpace` level when declaring a `NormedAddCommGroup` instance as a special case
of a more general `SeminormedAddCommGroup` instance."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c700082d1a0bf4ea8779800957d94d938ec63c17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
