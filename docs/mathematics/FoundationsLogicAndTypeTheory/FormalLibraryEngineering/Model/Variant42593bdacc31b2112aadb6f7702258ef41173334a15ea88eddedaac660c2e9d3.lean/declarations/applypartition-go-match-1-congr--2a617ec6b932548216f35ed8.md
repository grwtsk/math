# applyPartition.go.match_1.congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:933167fb-551b-8d36-3e71-974f95384757",
  "kind": "theorem",
  "lexical_name": "applyPartition.go.match_1.congr",
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
  "slug": "applypartition-go-match-1-congr--2a617ec6b932548216f35ed8",
  "source": {
    "blob": "5ac2ee3ea36c51f16cef1be36adb3bcd1c274a20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant42593bdacc31b2112aadb6f7702258ef41173334a15ea88eddedaac660c2e9d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a617ec6b932548216f35ed8a019d0bef1d7b54e7039a825d085f2b77b41d433",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant42593bdacc31b2112aadb6f7702258ef41173334a15ea88eddedaac660c2e9d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:933167fb-551b-8d36-3e71-974f95384757`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem applyPartition.go.match_1.congr {α : Sort u} {o o' : Ordering}
    {lt : o = .lt → α} {eq : o = .eq → α} {gt : o = .gt → α}
    {lt' : o' = .lt → α} {eq' : o' = .eq → α} {gt' : o' = .gt → α}
    (ho : o = o')
    (hlt : ∀ h, lt (ho.trans h) = lt' h)
    (heq : ∀ h, eq (ho.trans h) = eq' h)
    (hgt : ∀ h, gt (ho.trans h) = gt' h) :
    (match (generalizing := false) h : o with | .lt => lt h | .eq => eq h | .gt => gt h) =
      (match (generalizing := false) h : o' with | .lt => lt' h | .eq => eq' h | .gt => gt' h) := by
  induction ho; induction funext hlt; induction funext heq; induction funext hgt
  rfl

@[congr]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant42593bdacc31b2112aadb6f7702258ef41173334a15ea88eddedaac660c2e9d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant42593bdacc31b2112aadb6f7702258ef41173334a15ea88eddedaac660c2e9d3.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ac2ee3ea36c51f16cef1be36adb3bcd1c274a20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
