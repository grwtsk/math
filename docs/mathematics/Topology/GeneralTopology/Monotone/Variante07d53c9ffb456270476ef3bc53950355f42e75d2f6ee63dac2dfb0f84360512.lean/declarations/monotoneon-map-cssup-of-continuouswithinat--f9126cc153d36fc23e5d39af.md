# MonotoneOn.map_csSup_of_continuousWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d81dee74f9bc020acf1ba502c05b0d3128b019f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e07d53c9ffb456270476ef3bc53950355f42e75d2f6ee63dac2dfb0f84360512.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3479d34-776e-6068-7c04-604882b1e69f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c4fc6b1-a788-88c0-d110-1d13c95f2d48",
  "kind": "theorem",
  "lexical_name": "MonotoneOn.map_csSup_of_continuousWithinAt",
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
  "slug": "monotoneon-map-cssup-of-continuouswithinat--f9126cc153d36fc23e5d39af",
  "source": {
    "blob": "7d81dee74f9bc020acf1ba502c05b0d3128b019f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 216,
    "path": "GRWTSK/Topology/GeneralTopology/Monotone/Variante07d53c9ffb456270476ef3bc53950355f42e75d2f6ee63dac2dfb0f84360512.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9126cc153d36fc23e5d39af3f4339a2902fb2a0cbae2da4074da1687f8c645b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monotone/Variante07d53c9ffb456270476ef3bc53950355f42e75d2f6ee63dac2dfb0f84360512.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c4fc6b1-a788-88c0-d110-1d13c95f2d48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonotoneOn.map_csSup_of_continuousWithinAt {f : α → β} {A : Set α}
    (Cf : ContinuousWithinAt f A (sSup A))
    (Mf : MonotoneOn f A) (A_nonemp : A.Nonempty) (A_bdd : BddAbove A := by bddDefault) :
    f (sSup A) = sSup (f '' A) :=
  --This is a particular case of the more general `IsLUB.isLUB_of_tendsto`
  .symm <| ((isLUB_csSup A_nonemp A_bdd).isLUB_of_tendsto Mf A_nonemp <|
    Cf.mono_left fun ⦃_⦄ a ↦ a).csSup_eq (A_nonemp.image f)

/-- A monotone function continuous at the supremum of a nonempty set sends this supremum to
the supremum of the image of this set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monotone/Variante07d53c9ffb456270476ef3bc53950355f42e75d2f6ee63dac2dfb0f84360512.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monotone/Variante07d53c9ffb456270476ef3bc53950355f42e75d2f6ee63dac2dfb0f84360512.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d81dee74f9bc020acf1ba502c05b0d3128b019f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
