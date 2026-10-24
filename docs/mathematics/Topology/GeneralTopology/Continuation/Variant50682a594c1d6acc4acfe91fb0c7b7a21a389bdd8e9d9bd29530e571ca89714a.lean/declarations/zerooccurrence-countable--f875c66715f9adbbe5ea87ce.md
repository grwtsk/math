# zeroOccurrence_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca57e4c294b579733ed0c1051061e6f3c6c924a715216c47b3cbe7abed65503b",
  "kind": "instance",
  "lexical_name": "zeroOccurrence_countable",
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
  "slug": "zerooccurrence-countable--f875c66715f9adbbe5ea87ce",
  "source": {
    "blob": "3a3710f13556daec3ffb67a27b3cf5e7c9880df9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 43,
    "path": "GRWTSK/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f875c66715f9adbbe5ea87ce4b6f31cbfa16e6d1c65de596b7b4b44d7d089a09",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca57e4c294b579733ed0c1051061e6f3c6c924a715216c47b3cbe7abed65503b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance zeroOccurrence_countable : Countable ZeroOccurrence := by
  let : ∀ n : ℕ, Finite (ZeroShell n) := zeroShell_finite
  let f : ZeroOccurrence → Σ n : ℕ, ZeroShell n :=
    fun o ↦ ⟨shellIndex o, ⟨o, rfl⟩⟩
  apply Function.Injective.countable (f := f)
  intro o p h
  exact congrArg
    (fun q : Σ n : ℕ, ZeroShell n ↦ q.2.val) h

/-- Every bounded radial set contains only finitely many actual occurrence
slots. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a3710f13556daec3ffb67a27b3cf5e7c9880df9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
