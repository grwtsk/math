# convertModifier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53dd768fe1a7e07f78123c9138f7fc7eef63ac143dcd3f563e1680c57f997cac",
  "kind": "def",
  "lexical_name": "convertModifier",
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
  "slug": "convertmodifier--e8de33d799f28557487c7714",
  "source": {
    "blob": "4bd97d000300a9970fe480060e83eb7943ca6b41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant2bc24e1f05698d38ae43ce8a7ea449152ac7331e759cb6c079be58f955b8184f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8de33d799f28557487c77143e7cd64d4b3900c39c3f6cbba62ad178c25282c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant2bc24e1f05698d38ae43ce8a7ea449152ac7331e759cb6c079be58f955b8184f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53dd768fe1a7e07f78123c9138f7fc7eef63ac143dcd3f563e1680c57f997cac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private meta def convertModifier : Modifier → MacroM (TSyntax `term)
  | .G p => do `(Std.Time.Modifier.G $(← convertText p))
  | .y p => do `(Std.Time.Modifier.y $(← convertYear p))
  | .u p => do `(Std.Time.Modifier.u $(← convertYear p))
  | .Y p => do `(Std.Time.Modifier.Y $(← convertYear p))
  | .D p => do `(Std.Time.Modifier.D $(← convertNumber p))
  | .M (.inl num) => do `(Std.Time.Modifier.M (.inl $(← convertNumber num)))
  | .M (.inr txt) => do `(Std.Time.Modifier.M (.inr $(← convertText txt)))
  | .L (.inl num) => do `(Std.Time.Modifier.L (.inl $(← convertNumber num)))
  | .L (.inr txt) => do `(Std.Time.Modifier.L (.inr $(← convertText txt)))
  | .d p => do `(Std.Time.Modifier.d $(← convertNumber p))
  | .Q (.inl num) => do `(Std.Time.Modifier.Q (.inl $(← convertNumber num)))
  | .Q (.inr txt) => do `(Std.Time.Modifier.Q (.inr $(← convertText txt)))
  | .q (.inl num) => do `(Std.Time.Modifier.q (.inl $(← convertNumber num)))
  | .q (.inr txt) => do `(Std.Time.Modifier.q (.inr $(← convertText txt)))
  | .w p => do `(Std.Time.Modifier.w $(← convertNumber p))
  | .W p => do `(Std.Time.Modifier.W $(← convertNumber p))
  | .E p => do `(Std.Time.Modifier.E $(← convertText p))
  | .e (.inl num) => do `(Std.Time.Modifier.e (.inl $(← convertNumber num)))
  | .e (.inr txt) => do `(Std.Time.Modifier.e (.inr $(← convertText txt)))
  | .c (.inl num) => do `(Std.Time.Modifier.c (.inl $(← convertNumber num)))
  | .c (.inr txt) => do `(Std.Time.Modifier.c (.inr $(← convertText txt)))
  | .F p => do `(Std.Time.Modifier.F $(← convertNumber p))
  | .a p => do `(Std.Time.Modifier.a $(← convertText p))
  | .b p => do `(Std.Time.Modifier.b $(← convertText p))
  | .B p => do `(Std.Time.Modifier.B $(← convertText p))
  | .h p => do `(Std.Time.Modifier.h $(← convertNumber p))
  | .K p => do `(Std.Time.Modifier.K $(← convertNumber p))
  | .k p => do `(Std.Time.Modifier.k $(← convertNumber p))
  | .H p => do `(Std.Time.Modifier.H $(← convertNumber p))
  | .m p => do `(Std.Time.Modifier.m $(← convertNumber p))
  | .s p => do `(Std.Time.Modifier.s $(← convertNumber p))
  | .S p => do `(Std.Time.Modifier.S $(← convertFraction p))
  | .A p => do `(Std.Time.Modifier.A $(← convertNumber p))
  | .n p => do `(Std.Time.Modifier.n $(← convertNumber p))
  | .N p => do `(Std.Time.Modifier.N $(← convertNumber p))
  | .V p => do `(Std.Time.Modifier.V $(← convertZoneId p))
  | .z p => do `(Std.Time.Modifier.z $(← convertZoneName p))
  | .v p => do `(Std.Time.Modifier.v $(← convertZoneName p))
  | .O p => do `(Std.Time.Modifier.O $(← convertOffsetO p))
  | .X p => do `(Std.Time.Modifier.X $(← convertOffsetX p))
  | .x p => do `(Std.Time.Modifier.x $(← convertOffsetX p))
  | .Z p => do `(Std.Time.Modifier.Z $(← convertOffsetZ p))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant2bc24e1f05698d38ae43ce8a7ea449152ac7331e759cb6c079be58f955b8184f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant2bc24e1f05698d38ae43ce8a7ea449152ac7331e759cb6c079be58f955b8184f.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bd97d000300a9970fe480060e83eb7943ca6b41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
