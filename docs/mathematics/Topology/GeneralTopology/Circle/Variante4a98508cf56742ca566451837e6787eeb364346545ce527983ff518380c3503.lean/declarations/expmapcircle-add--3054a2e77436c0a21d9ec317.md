# expMapCircle_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01a25656-08c1-9488-35ac-313e28fd37fc",
  "kind": "theorem",
  "lexical_name": "expMapCircle_add",
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
  "slug": "expmapcircle-add--3054a2e77436c0a21d9ec317",
  "source": {
    "blob": "bc362fd6afe41331478749d2a6190233fbb8e816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 140,
    "path": "GRWTSK/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3054a2e77436c0a21d9ec317eeb8952a0c8d08f7b08ff00f552df4e6c4af8365",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01a25656-08c1-9488-35ac-313e28fd37fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expMapCircle_add (x y : ℝ) : expMapCircle (x + y) = expMapCircle x * expMapCircle y :=
  Subtype.ext <| by
    simp only [expMapCircle_apply, Submonoid.coe_mul, ofReal_add, add_mul, Complex.exp_add]
#align exp_map_circle_add expMapCircle_add

/-- The map `fun t => exp (t * I)` from `ℝ` to the unit circle in `ℂ`,
considered as a homomorphism of groups. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc362fd6afe41331478749d2a6190233fbb8e816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
