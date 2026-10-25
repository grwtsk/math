# balanceR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23c691e1d3a8fed8a9c7e9a3813d060c431f41a8c2155825bfb88080d8ddfaef",
  "kind": "def",
  "lexical_name": "balanceR",
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
  "slug": "balancer--53d89245a778b9addfb6a475",
  "source": {
    "blob": "8a9edfc50ebaaf22b84d3e1758a3e5989fc92b55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 203,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant0c41a6888324ca90e0143d3b4f3d05729742743a47d13176b22bd831eb4ce4d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53d89245a778b9addfb6a47547f507e1d6b3b186ba4e1b7051f9f85d81a0c718",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant0c41a6888324ca90e0143d3b4f3d05729742743a47d13176b22bd831eb4ce4d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23c691e1d3a8fed8a9c7e9a3813d060c431f41a8c2155825bfb88080d8ddfaef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def balanceR (k : α) (v : β k) (l r : Impl α β) (hlb : Balanced l) (hrb : Balanced r)
    (hlr : BalanceLPrecond r.size l.size) : Impl α β :=
  match l with
  | leaf => match r with
    | leaf => .inner 1 k v .leaf .leaf
    | (inner _ _ _ .leaf .leaf) => .inner 2 k v .leaf r
    | inner _ rk rv .leaf rr@(.inner _ _ _ _ _) => .inner 3 rk rv (.inner 1 k v .leaf .leaf) rr
    | inner _ rk rv (.inner _ rlk rlv _ _) .leaf => .inner 3 rlk rlv (.inner 1 k v .leaf .leaf)
        (.inner 1 rk rv .leaf .leaf)
    | inner rs rk rv (.inner rls rlk rlv rll rlr) (.inner rrs _ _ _ _) =>
      False.elim ✓
  | inner ls _ _ _ _ => match r with
    | leaf => .inner (1 + ls) k v l .leaf
    | inner rs rk rv rl rr =>
      if hrsd : rs > delta * ls then match rl, rr with
        | inner rls rlk rlv rll rlr, .inner rrs _ _ _ _ =>
          if rls < ratio * rrs then
            .inner (1 + ls + rs) rk rv (.inner (1 + ls + rls) k v l (.inner rls rlk rlv rll rlr)) rr
          else
            .inner (1 + ls + rs) rlk rlv (.inner (1 + ls + rll.size) k v l rll)
              (.inner (1 + rrs + rlr.size) rk rv rlr rr)
        | inner _ _ _ _ _, leaf => False.elim ✓
        | leaf, _ => False.elim ✓
      else .inner (1 + ls + rs) k v l (inner rs rk rv rl rr)

/--
Slower version of `balanceR` with weaker balancing assumptions that hold after erasing from
the left side of the tree.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant0c41a6888324ca90e0143d3b4f3d05729742743a47d13176b22bd831eb4ce4d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant0c41a6888324ca90e0143d3b4f3d05729742743a47d13176b22bd831eb4ce4d8.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a9edfc50ebaaf22b84d3e1758a3e5989fc92b55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
