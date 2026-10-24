# MaxToGood

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85c1b2ada881da41106071c5113522bb411bf9ce5cbe32d3b4b596cb419b4860",
  "kind": "def",
  "lexical_name": "MaxToGood",
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
  "slug": "maxtogood--273ec86ac0ee3c1a98877a13",
  "source": {
    "blob": "6e9c17a5b0230e241e6b1908b8f97434365ffd45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 606,
    "line": 602,
    "path": "GRWTSK/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:273ec86ac0ee3c1a98877a13f0708d634e212dca95a7390cb8ff52535f7caacf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85c1b2ada881da41106071c5113522bb411bf9ce5cbe32d3b4b596cb419b4860`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–606.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MaxToGood
    (h₁ : ⊤ ≤ Submodule.span ℤ (Set.range (eval (π C (ord I · < o))))) :
    MaxProducts C ho → GoodProducts (C' C ho) :=
  fun l ↦ ⟨l.val.Tail, maxTail_isGood C hC hsC ho l h₁⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e9c17a5b0230e241e6b1908b8f97434365ffd45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
