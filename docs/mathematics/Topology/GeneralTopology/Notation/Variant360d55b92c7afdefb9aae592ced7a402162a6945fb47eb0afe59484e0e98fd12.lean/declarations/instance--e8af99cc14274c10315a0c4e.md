# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8aa84d87db394090209d731fddaf01f693ab03e201405b93c61e3cc453b07d77",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e8af99cc14274c10315a0c4e",
  "source": {
    "blob": "ab1814a3197cf1e0da55ec18deaa7a20837c6cc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 61,
    "path": "GRWTSK/Topology/GeneralTopology/Notation/Variant360d55b92c7afdefb9aae592ced7a402162a6945fb47eb0afe59484e0e98fd12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8af99cc14274c10315a0c4ede155399980b516c26cff9c3be2f18730a610585",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Notation/Variant360d55b92c7afdefb9aae592ced7a402162a6945fb47eb0afe59484e0e98fd12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8aa84d87db394090209d731fddaf01f693ab03e201405b93c61e3cc453b07d77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe instance {α : Type*} {β : α → Type*} [Repr α] [∀ i, Repr (β i)] [∀ i, Zero (β i)] :
    Repr (Π₀ a, β a) where
  reprPrec f p :=
    let vals :=
      ((f.support'.unquot.val.map fun i => (repr i, repr (f i))).filter
        (fun p => toString p.2 != "0")).unquot
    let vals_dedup := vals.foldl (fun xs x => x :: xs.eraseP (toString ·.1 == toString x.1)) []
    if vals.length = 0 then
      "0"
    else
      let ret : Std.Format := f!"fun₀" ++ .nest 2 (
        .group (.join <| vals_dedup.map fun a =>
          .line ++ .group (f!"| {a.1} =>" ++ .line ++ a.2)))
      if p ≥ leadPrec then Format.paren ret else ret

end DFinsupp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Notation/Variant360d55b92c7afdefb9aae592ced7a402162a6945fb47eb0afe59484e0e98fd12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Notation/Variant360d55b92c7afdefb9aae592ced7a402162a6945fb47eb0afe59484e0e98fd12.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab1814a3197cf1e0da55ec18deaa7a20837c6cc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
