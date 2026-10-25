# powModTR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0b3426150243b22fb07e90375d09dba9468847d2101138a0d56c1357e6af008",
  "kind": "def",
  "lexical_name": "powModTR",
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
  "slug": "powmodtr--1814e4fb8948877dcdffffcc",
  "source": {
    "blob": "614a7b43ee109c4965e0578e8d758d34b1e0cfa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1814e4fb8948877dcdffffcc0bba8ef2dd20393f7c27de7c21f5bb48a5b31fe8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0b3426150243b22fb07e90375d09dba9468847d2101138a0d56c1357e6af008`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def powModTR (a b n : Nat) : Nat :=
  aux b.succ (a.mod n) b 1
where
  aux : Nat → ((a b c : Nat) → Nat) :=
    Nat.rec (fun _ _ _ => 0)
      (fun _ r a b c =>
        (b.beq 0).rec
          (((b.mod 2).beq 0).rec
            (r ((a.mul a).mod n) (b.div 2) ((a.mul c).mod n))
            (r ((a.mul a).mod n) (b.div 2) c))
          (c.mod n))

/-- Computable version of `powModTR` using `partial_fixpoint`. Used at elaboration time
(e.g. in `mkPowModEq'`) where we need actual computation, not kernel reduction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variant476d2b744674d49702cab77ef09cabc07abc225eb1437c1f172479c7a596efae.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `614a7b43ee109c4965e0578e8d758d34b1e0cfa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
