# mkFinFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3017043c40f234a94b3a2443a6df1199500be42726e374eb796eabf7b4cc946",
  "kind": "def",
  "lexical_name": "mkFinFun",
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
  "slug": "mkfinfun--f4fac5dfc09a2e8adf576de0",
  "source": {
    "blob": "606492d1ae65186fc637645db8b677103f8e62e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4fac5dfc09a2e8adf576de056d809a5e0c9d102d91823f197f11fa90f0e779a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3017043c40f234a94b3a2443a6df1199500be42726e374eb796eabf7b4cc946`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkFinFun {u : Level} {α : Q(Type $u)} (atoms : Array Q($α)) : MetaM Expr := do
  if h : atoms.isEmpty then
    return q(Fin.elim0 : Fin 0 → $α)
  else
    let rarray := RArray.ofArray atoms (by simpa [Array.size_pos_iff] using h)
    let rarrayExpr : Q(RArray $α) ← rarray.toExpr α (fun x ↦ x)
    haveI m : Q(ℕ) := mkNatLit atoms.size
    return q(fun (x : Fin $m) ↦ ($rarrayExpr).get x.val)

/-- Translates a set of values in a linear ordered type to `ℤ`,
preserving all the facts except for `.isTop` and `.isBot`. We assume that these facts are filtered
at the preprocessing step. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `606492d1ae65186fc637645db8b677103f8e62e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
