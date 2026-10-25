# Fmla.proof_of_subsumes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65046b74-5551-4ada-53ab-350468a3066b",
  "kind": "theorem",
  "lexical_name": "Fmla.proof_of_subsumes",
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
  "slug": "fmla-proof-of-subsumes--3bb0f8454ba57ebf7a031d70",
  "source": {
    "blob": "b4ab0143bb599d2d5e7474dd92188f75f89c80e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 133,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant238700b4c89d5e299de3bcf02ac147c66608a27f6a696a174327b4a56e4a01cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bb0f8454ba57ebf7a031d7046c21cedc9b66991efbb3a80dcb7b0b9f0f5a8c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant238700b4c89d5e299de3bcf02ac147c66608a27f6a696a174327b4a56e4a01cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65046b74-5551-4ada-53ab-350468a3066b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Fmla.proof_of_subsumes {f : Fmla} {c : Clause}
    (H : Fmla.subsumes f (Fmla.one c)) : f.proof c :=
  fun _ h ↦ h.1 _ <| H.1 _ <| List.Mem.head ..

/-- The core unit-propagation step.

We have a local context of assumptions `¬l'` (sometimes called an assignment)
and we wish to add `¬l` to the context, that is, we want to prove `l` is also falsified.
This is because there is a clause `a ∨ b ∨ ¬l` in the global context
such that all literals in the clause are falsified except for `¬l`;
so in the context `h₁` where we suppose that `¬l` is falsified,
the clause itself is falsified so we can prove `False`.
We continue the proof in `h₂`, with the assumption that `l` is falsified. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant238700b4c89d5e299de3bcf02ac147c66608a27f6a696a174327b4a56e4a01cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant238700b4c89d5e299de3bcf02ac147c66608a27f6a696a174327b4a56e4a01cd.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4ab0143bb599d2d5e7474dd92188f75f89c80e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
