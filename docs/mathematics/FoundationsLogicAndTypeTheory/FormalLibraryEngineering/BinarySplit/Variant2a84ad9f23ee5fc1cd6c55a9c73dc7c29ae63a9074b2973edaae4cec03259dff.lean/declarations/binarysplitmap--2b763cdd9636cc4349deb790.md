# binarySplitMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a504c7457ba8a8d5edd91169c035009b65f5eed60f22173fa529864f231a1cd",
  "kind": "def",
  "lexical_name": "binarySplitMap",
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
  "slug": "binarysplitmap--2b763cdd9636cc4349deb790",
  "source": {
    "blob": "23e53162d808c7c82eff2ae58fa32e7b35e0e014",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BinarySplit/Variant2a84ad9f23ee5fc1cd6c55a9c73dc7c29ae63a9074b2973edaae4cec03259dff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b763cdd9636cc4349deb790c6bbb23eea0cce4d41611999263388cd816059d7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BinarySplit/Variant2a84ad9f23ee5fc1cd6c55a9c73dc7c29ae63a9074b2973edaae4cec03259dff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a504c7457ba8a8d5edd91169c035009b65f5eed60f22173fa529864f231a1cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def binarySplitMap {Iβ β : Type*} [ToSet Iβ β] [Coarsen Iβ β] :
    ℕ → Interval Dyadic → (Interval Dyadic → Iβ) → Iβ
  | 0, I, F => F I
  | n + 1, I, F =>
      match I with
      | ⟨some l, some u⟩ =>
          let m := midpoint l u
          Coarsen.coarsen β (binarySplitMap n ⟨l, m⟩ F) (binarySplitMap n ⟨m, u⟩ F)
      | _ => F I

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BinarySplit/Variant2a84ad9f23ee5fc1cd6c55a9c73dc7c29ae63a9074b2973edaae4cec03259dff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BinarySplit/Variant2a84ad9f23ee5fc1cd6c55a9c73dc7c29ae63a9074b2973edaae4cec03259dff.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23e53162d808c7c82eff2ae58fa32e7b35e0e014` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
