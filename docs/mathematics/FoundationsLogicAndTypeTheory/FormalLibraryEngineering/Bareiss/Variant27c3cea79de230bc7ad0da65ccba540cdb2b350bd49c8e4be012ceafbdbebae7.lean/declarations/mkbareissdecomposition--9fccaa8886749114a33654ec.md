# mkBareissDecomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aaed9466ff60bedfd5665b80d470f334980576480fc4cdf4dd7b37bc2a53021a",
  "kind": "def",
  "lexical_name": "mkBareissDecomposition",
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
  "slug": "mkbareissdecomposition--9fccaa8886749114a33654ec",
  "source": {
    "blob": "93265a8ceadef0365c540e95f20ba3b2d562c195",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bareiss/Variant27c3cea79de230bc7ad0da65ccba540cdb2b350bd49c8e4be012ceafbdbebae7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fccaa8886749114a33654ec6f2d2f6ff01f06bc290db69805329b3bedf4e289",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bareiss/Variant27c3cea79de230bc7ad0da65ccba540cdb2b350bd49c8e4be012ceafbdbebae7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aaed9466ff60bedfd5665b80d470f334980576480fc4cdf4dd7b37bc2a53021a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkBareissDecomposition {u : Level} (A : Expr) (m n : Nat) (α : Q(Type u))
    (entries : Array (Array Expr)) : MetaM BareissResult := do
  let d ← (← producerFor α) entries
  have _cr : Q(CommRing $α) := ← synthInstanceQ q(CommRing $α)
  have A : Q(Matrix (Fin $m) (Fin $n) $α) := A
  return { cert := ← mkCertificate _cr A entries d, data := d }

end Mathlib.Tactic.Echelon
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bareiss/Variant27c3cea79de230bc7ad0da65ccba540cdb2b350bd49c8e4be012ceafbdbebae7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bareiss/Variant27c3cea79de230bc7ad0da65ccba540cdb2b350bd49c8e4be012ceafbdbebae7.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93265a8ceadef0365c540e95f20ba3b2d562c195` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
