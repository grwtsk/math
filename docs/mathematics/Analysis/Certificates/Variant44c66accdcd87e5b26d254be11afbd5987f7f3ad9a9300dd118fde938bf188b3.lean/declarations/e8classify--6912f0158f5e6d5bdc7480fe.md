# e8Classify

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05329274bfc3f1253ddcc425219e1155d359bfb2d144872d20eaff4971b12a39",
  "kind": "def",
  "lexical_name": "e8Classify",
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
  "slug": "e8classify--6912f0158f5e6d5bdc7480fe",
  "source": {
    "blob": "9d12f54168ae2691d3a2c8baad641fef9e52ccb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 906,
    "line": 904,
    "path": "GRWTSK/Analysis/Certificates/Variant44c66accdcd87e5b26d254be11afbd5987f7f3ad9a9300dd118fde938bf188b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6912f0158f5e6d5bdc7480fe9037a4b9dcfd61eb9f41fe9c7e6b59959ac908db",
  "verification": {
    "reference": "docs/verification/Analysis/Certificates/Variant44c66accdcd87e5b26d254be11afbd5987f7f3ad9a9300dd118fde938bf188b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05329274bfc3f1253ddcc425219e1155d359bfb2d144872d20eaff4971b12a39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 904–906.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def e8Classify (x : Population 8) : Fin 240 :=
  if x 0 = (-2) then (if x 1 = (-4) then (if x 2 = (-6) then (if x 3 = (-5) then (if x 4 = (-4) then (if x 5 = (-3) then (if x 6 = (-2) then (239) else (237)) else (235)) else (233)) else (231)) else (if x 7 = (-3) then (229) else (226))) else (if x 2 = (-5) then (if x 7 = (-3) then (227) else (222)) else (if x 3 = (-4) then (218) else (if x 4 = (-3) then (214) else (if x 5 = (-2) then (211) else (if x 6 = (-1) then (205) else (199))))))) else (if x 0 = (-1) then (if x 1 = (-3) then (if x 2 = (-5) then (if x 7 = (-3) then (223) else (219)) else (if x 3 = (-4) then (215) else (if x 4 = (-3) then (209) else (if x 5 = (-2) then (204) else (if x 6 = (-1) then (198) else (191)))))) else (if x 1 = (-2) then (if x 2 = (-4) then (if x 3 = (-4) then (210) else (if x 4 = (-3) then (203) else (if x 5 = (-2) then (197) else (if x 6 = (-1) then (190) else (183))))) else (if x 2 = (-3) then (if x 3 = (-3) then (if x 4 = (-3) then (if x 7 = (-2) then (196) else (188)) else (if x 5 = (-2) then (if x 7 = (-2) then (189) else (180)) else (if x 6 = (-1) then (if x 7 = (-2) then (181) else (172)) else (if x 7 = (-2) then (175) else (166))))) else (if x 4 = (-2) then (if x 5 = (-2) then (if x 7 = (-2) then (182) else (173)) else (if x 6 = (-1) then (if x 7 = (-2) then (174) else (163)) else (if x 7 = (-2) then (167) else (156)))) else (if x 5 = (-1) then (if x 6 = (-1) then (if x 7 = (-2) then (164) else (153)) else (if x 7 = (-2) then (157) else (144))) else (if x 7 = (-2) then (146) else (134))))) else (if x 3 = (-2) then (if x 4 = (-2) then (if x 5 = (-2) then (165) else (if x 6 = (-1) then (154) else (145))) else (if x 5 = (-1) then (if x 6 = (-1) then (142) else (132)) else (121))) else (if x 4 = (-1) then (if x 5 = (-1) then (if x 6 = (-1) then (130) else (119)) else (108)) else (96))))) else (if x 1 = (-1) then (if x 2 = (-2) then (if x 3 = (-2) then (if x 4 = (-2) then (if x 5 = (-2) then (155) else (if x 6 = (-1) then (143) else (133))) else (if x 5 = (-1) then (if x 6 = (-1) then (131) else (120)) else (109))) else (if x 4 = (-1) then (if x 5 = (-1) then (if x 6 = (-1) then (118) else (107)) else (95)) else (81))) else (if x 2 = (-1) then (if x 3 = (-1) then (if x 4 = (-1) then (if x 5 = (-1) then (if x 6 = (-1) then (if x 7 = (-1) then (106) else (93)) else (if x 7 = (-1) then (94) else (79))) else (if x 7 = (-1) then (80) else (65))) else (if x 7 = (-1) then (66) else (51))) else (if x 7 = (-1) then (52) else (37))) else (23))) else (8)))) else (if x 0 = (0) then (if x 1 = (-1) then (if x 2 = (-2) then (if x 3 = (-2) then (if x 4 = (-2) then (if x 5 = (-2) then (152) else (if x 6 = (-1) then (140) else (128))) else (if x 5 = (-1) then (if x 6 = (-1) then (127) else (115)) else (103))) else (if x 4 = (-1) then (if x 5 = (-1) then (if x 6 = (-1) then (114) else (102)) else (88)) else (72))) else (if x 2 = (-1) then (if x 3 = (-1) then (if x 4 = (-1) then (if x 5 = (-1) then (if x 6 = (-1) then (if x 7 = (-1) then (101) else (86)) else (if x 7 = (-1) then (87) else (70))) else (if x 7 = (-1) then (71) else (55))) else (if x 7 = (-1) then (56) else (40))) else (if x 7 = (-1) then (41) else (25))) else (10))) else (if x 1 = (0) then (if x 2 = (-1) then (if x 3 = (-1) then (if x 4 = (-1) then (if x 5 = (-1) then (if x 6 = (-1) then (if x 7 = (-1) then (92) else (76)) else (if x 7 = (-1) then (77) else (60))) else (if x 7 = (-1) then (61) else (44))) else (if x 7 = (-1) then (45) else (28))) else (if x 7 = (-1) then (29) else (12))) else (if x 2 = (0) then (if x 3 = (-1) then (if x 4 = (-1) then (if x 5 = (-1) then (if x 6 = (-1) then (64) else (48)) else (32)) else (15)) else (if x 3 = (0) then (if x 4 = (-1) then (if x 5 = (-1) then (if x 6 = (-1) then (50) else (34)) else (17)) else (if x 4 = (0) then (if x 5 = (-1) then (if x 6 = (-1) then (36) else (19)) else (if x 5 = (0) then (if x 6 = (-1) then (21) else (if x 6 = (0) then (if x 7 = (-1) then (22) else (7)) else (6))) else (if x 6 = (0) then (5) else (20)))) else (if x 5 = (0) then (4) else (if x 6 = (0) then (18) else (35))))) else (if x 4 = (0) then (3) else (if x 5 = (0) then (16) else (if x 6 = (0) then (33) else (49)))))) else (if x 3 = (0) then (if x 7 = (0) then (2) else (14)) else (if x 4 = (0) then (if x 7 = (0) then (13) else (31)) else (if x 5 = (0) then (if x 7 = (0) then (30) else (47)) else (if x 6 = (0) then (if x 7 = (0) then (46) else (63)) else (if x 7 = (0) then (62) else (78)))))))) else (if x 2 = (0) then (1) else (if x 2 = (1) then (if x 3 = (0) then (if x 7 = (0) then (11) else (27)) else (if x 4 = (0) then (if x 7 = (0) then (26) else (43)) else (if x 5 = (0) then (if x 7 = (0) then (42) else (58)) else (if x 6 = (0) then (if x 7 = (0) then (57) else (74)) else (if x 7 = (0) then (73) else (89)))))) else (if x 3 = (1) then (if x 4 = (0) then (59) else (if x 5 = (0) then (75) else (if x 6 = (0) then (90) else (104)))) else (if x 4 = (1) then (if x 5 = (0) then (91) else (if x 6 = (0) then (105) else (116))) else (if x 5 = (1) then (if x 6 = (0) then (117) else (129)) else (141)))))))) else (if x 0 = (1) then (if x 1 = (0) then (0) else (if x 1 = (1) then (if x 2 = (0) then (9) else (if x 2 = (1) then (if x 3 = (0) then (if x 7 = (0) then (24) else (39)) else (if x 4 = (0) then (if x 7 = (0) then (38) else (54)) else (if x 5 = (0) then (if x 7 = (0) then (53) else (68)) else (if x 6 = (0) then (if x 7 = (0) then (67) else (83)) else (if x 7 = (0) then (82) else (97)))))) else (if x 3 = (1) then (if x 4 = (0) then (69) else (if x 5 = (0) then (84) else (if x 6 = (0) then (98) else (110)))) else (if x 4 = (1) then (if x 5 = (0) then (100) else (if x 6 = (0) then (112) else (123))) else (if x 5 = (1) then (if x 6 = (0) then (125) else (136)) else (149)))))) else (if x 1 = (2) then (if x 2 = (2) then (if x 3 = (1) then (if x 4 = (0) then (85) else (if x 5 = (0) then (99) else (if x 6 = (0) then (111) else (122)))) else (if x 4 = (1) then (if x 5 = (0) then (113) else (if x 6 = (0) then (124) else (135))) else (if x 5 = (1) then (if x 6 = (0) then (138) else (148)) else (160)))) else (if x 2 = (3) then (if x 3 = (2) then (if x 4 = (1) then (if x 5 = (0) then (if x 7 = (1) then (126) else (139)) else (if x 6 = (0) then (if x 7 = (1) then (137) else (151)) else (if x 7 = (1) then (147) else (159)))) else (if x 5 = (1) then (if x 6 = (0) then (if x 7 = (1) then (150) else (162)) else (if x 7 = (1) then (158) else (170))) else (if x 7 = (1) then (169) else (178)))) else (if x 4 = (2) then (if x 5 = (1) then (if x 6 = (0) then (if x 7 = (1) then (161) else (171)) else (if x 7 = (1) then (168) else (177))) else (if x 7 = (1) then (176) else (185))) else (if x 7 = (1) then (184) else (192)))) else (if x 3 = (3) then (if x 4 = (2) then (if x 5 = (1) then (if x 6 = (0) then (179) else (186)) else (193)) else (200)) else (207)))) else (if x 2 = (4) then (if x 3 = (3) then (if x 4 = (2) then (if x 5 = (1) then (if x 6 = (0) then (187) else (194)) else (201)) else (206)) else (213)) else (if x 7 = (2) then (217) else (221)))))) else (if x 1 = (3) then (if x 2 = (4) then (if x 3 = (3) then (if x 4 = (2) then (if x 5 = (1) then (if x 6 = (0) then (195) else (202)) else (208)) else (212)) else (216)) else (if x 7 = (2) then (220) else (225))) else (if x 2 = (5) then (if x 7 = (2) then (224) else (228)) else (if x 3 = (4) then (230) else (if x 4 = (3) then (232) else (if x 5 = (2) then (234) else (if x 6 = (1) then (236) else (238))))))))))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Certificates/Variant44c66accdcd87e5b26d254be11afbd5987f7f3ad9a9300dd118fde938bf188b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Certificates/Variant44c66accdcd87e5b26d254be11afbd5987f7f3ad9a9300dd118fde938bf188b3.lean#L904).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d12f54168ae2691d3a2c8baad641fef9e52ccb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
