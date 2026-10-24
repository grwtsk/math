# opacityBase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6906c81cc626f800fa0324a792784572bb3eb766fa7c87bf3f2c81a5fd74008",
  "kind": "def",
  "lexical_name": "opacityBase",
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
  "slug": "opacitybase--927f11ebc9f4831d077a2b5a",
  "source": {
    "blob": "0a713333adcb9c2a1d9e3b5226aa27eced1bdaef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 123,
    "path": "GRWTSK/Analysis/CyclicNeutral/Variant3184950d8b5d438e1ef9ca4429c62a764f6307b1d219171655e4f2f717f27025.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:927f11ebc9f4831d077a2b5a539a7a4f77145a259acc82dddcc706cc97c6ce7b",
  "verification": {
    "reference": "docs/verification/Analysis/CyclicNeutral/Variant3184950d8b5d438e1ef9ca4429c62a764f6307b1d219171655e4f2f717f27025.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6906c81cc626f800fa0324a792784572bb3eb766fa7c87bf3f2c81a5fd74008`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def opacityBase (t : ℝ) : ℝ :=
  (1 - Real.cos (phaseAngle t)) / 2

/--
The green-channel shift is the cosine quadrature of the cyclic phase.  Its
range is normalized to `[0, 1]`; it is color data derived from the retained
phase, not a replacement for that phase.
-/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CyclicNeutral/Variant3184950d8b5d438e1ef9ca4429c62a764f6307b1d219171655e4f2f717f27025.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CyclicNeutral/Variant3184950d8b5d438e1ef9ca4429c62a764f6307b1d219171655e4f2f717f27025.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a713333adcb9c2a1d9e3b5226aa27eced1bdaef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
