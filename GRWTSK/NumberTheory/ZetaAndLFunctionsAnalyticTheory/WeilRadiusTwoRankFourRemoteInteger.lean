/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Formal assurance is tracked in grwtsk/noeaaeue docs/verification.md with
exact-source receipts. Independent analytical review and novelty assessment
remain pending. This is a source-bound finite component, not a high-floor,
whole-window, cofinal, RH or Dirichlet-GRH theorem.
-/

import Lean.Elab.Tactic.Decide
import Mathlib.Data.Int.Basic
import Mathlib.Data.Fintype.Fin
import Mathlib.Data.Fintype.Sum
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Lean.Elab.Tactic.Omega

/-!
# Integer products for six radius-two rank-four remote observations

The trial coordinates are the 512 physical modes and one scalar pole; the head
has 64 physical coordinates and that pole. The middle reconstruction is the
literal product of a 448 by 4 left factor and a 4 by 65 right factor, on the
common 24-bit grid. The first 64 physical rows and the pole row are the exact
identity. These integer arrays deliberately use narrow arithmetic imports.
Their identities with the maintained reconstruction and checked 64-bit scalar
inputs are proved in `WeilRadiusTwoRankFourRemoteEntries`.

For a signed trace, summing coefficient times the lower-plus-upper endpoint
gives twice the centre, and summing absolute coefficient times endpoint width
gives twice its radius. For the physical weighted Gram, the same construction
uses the product of two coefficients. Exact finite decisions prove these
integer equalities at three first-trace coordinates (0, 63, pole) and three
Gram corners ((0,0), (0,pole), (pole,pole)). The pole is part of the signed
first trace but is excluded from the physical weighted Gram.

This is the arithmetic half of the source-preserving return; these literal
values alone do not prove input soundness. The adapter supplies that separate
closed scalar premise. In particular, absolute values are taken after the
rank-four product: replacing abs(LR) by abs(L)abs(R) would change the radii.
No complete 65-coordinate vector, full Gram, complete-remote packet containment,
1/5 high floor at N=64, or whole-window claim follows from the six comparisons.
The separate 45-bit/K2048 recipe is not identified with this 64-bit/K1024 lane.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 10000000
open scoped BigOperators
namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourRemoteInteger
abbrev Trial := Fin 512 ⊕ Unit
abbrev Head := Fin 64 ⊕ Unit
private def leftRow000 : Array Int := #[-2133, 2969, -323, 353]
private def leftRow001 : Array Int := #[-247, 27, -94, -166]
private def leftRow002 : Array Int := #[741, -132, 60, 427]
private def leftRow003 : Array Int := #[-1054, -43, -95, -571]
private def leftRow004 : Array Int := #[1172, 670, 565, 473]
private def leftRow005 : Array Int := #[-1426, -260, -29, -631]
private def leftRow006 : Array Int := #[267, 154, 106, 73]
private def leftRow007 : Array Int := #[-934, -868, -684, -17]
private def leftRow008 : Array Int := #[107, 409, 467, -157]
private def leftRow009 : Array Int := #[-65, -49, -35, -4]
private def leftRow010 : Array Int := #[927, 251, -172, 230]
private def leftRow011 : Array Int := #[-202, -448, -493, 211]
private def leftRow012 : Array Int := #[343, -145, -420, 240]
private def leftRow013 : Array Int := #[-360, -20, 216, -128]
private def leftRow014 : Array Int := #[209, 71, -44, 29]
private def leftRow015 : Array Int := #[-748, -450, -97, 78]
private def leftRow016 : Array Int := #[294, 26, -197, 85]
private def leftRow017 : Array Int := #[-854, -294, 261, -59]
private def leftRow018 : Array Int := #[617, 326, -22, -61]
private def leftRow019 : Array Int := #[-867, -636, -235, 255]
private def leftRow020 : Array Int := #[97, 61, 13, -19]
private def leftRow021 : Array Int := #[-112, -175, -182, 117]
private def leftRow022 : Array Int := #[588, 314, -53, -93]
private def leftRow023 : Array Int := #[-103, -91, -50, 50]
private def leftRow024 : Array Int := #[71, 53, 18, -28]
private def leftRow025 : Array Int := #[-41, -114, -151, 98]
private def leftRow026 : Array Int := #[118, -14, -148, 51]
private def leftRow027 : Array Int := #[-540, -205, 221, 31]
private def leftRow028 : Array Int := #[77, 49, 0, -28]
private def leftRow029 : Array Int := #[-30, -92, -123, 89]
private def leftRow030 : Array Int := #[317, -83, -488, 192]
private def leftRow031 : Array Int := #[-69, -23, 35, 1]
private def leftRow032 : Array Int := #[382, 85, -290, 24]
private def leftRow033 : Array Int := #[-369, -234, 12, 140]
private def leftRow034 : Array Int := #[186, -46, -298, 105]
private def leftRow035 : Array Int := #[-203, -40, 167, -17]
private def leftRow036 : Array Int := #[143, 51, -78, -13]
private def leftRow037 : Array Int := #[-598, -248, 270, 98]
private def leftRow038 : Array Int := #[350, 215, -33, -135]
private def leftRow039 : Array Int := #[-128, -133, -84, 111]
private def leftRow040 : Array Int := #[158, -57, -298, 112]
private def leftRow041 : Array Int := #[-236, -47, 205, -17]
private def leftRow042 : Array Int := #[286, 110, -150, -38]
private def leftRow043 : Array Int := #[-80, -42, 20, 24]
private def leftRow044 : Array Int := #[401, 252, -46, -179]
private def leftRow045 : Array Int := #[-130, 17, 198, -55]
private def leftRow046 : Array Int := #[148, 48, -101, -14]
private def leftRow047 : Array Int := #[-268, -106, 149, 50]
private def leftRow048 : Array Int := #[455, 218, -182, -129]
private def leftRow049 : Array Int := #[-347, -196, 85, 133]
private def leftRow050 : Array Int := #[459, 310, -18, -237]
private def leftRow051 : Array Int := #[-37, -20, 12, 13]
private def leftRow052 : Array Int := #[113, -19, -179, 59]
private def leftRow053 : Array Int := #[-51, -26, 18, 15]
private def leftRow054 : Array Int := #[123, 48, -75, -26]
private def leftRow055 : Array Int := #[-440, -227, 162, 158]
private def leftRow056 : Array Int := #[417, 277, -34, -222]
private def leftRow057 : Array Int := #[56, 72, 62, -71]
private def leftRow058 : Array Int := #[66, 49, 6, -41]
private def leftRow059 : Array Int := #[-54, 25, 122, -43]
private def leftRow060 : Array Int := #[113, 29, -99, -7]
private def leftRow061 : Array Int := #[-77, -38, 32, 26]
private def leftRow062 : Array Int := #[476, 250, -173, -180]
private def leftRow063 : Array Int := #[-18, 5, 38, -10]
private def leftRow064 : Array Int := #[78, 47, -17, -38]
private def leftRow065 : Array Int := #[-60, -28, 31, 20]
private def leftRow066 : Array Int := #[52, 62, 45, -65]
private def leftRow067 : Array Int := #[-173, -23, 197, -17]
private def leftRow068 : Array Int := #[243, 86, -172, -44]
private def leftRow069 : Array Int := #[-368, -169, 186, 112]
private def leftRow070 : Array Int := #[166, 88, -62, -66]
private def leftRow071 : Array Int := #[-98, -52, 38, 41]
private def leftRow072 : Array Int := #[182, 112, -40, -94]
private def leftRow073 : Array Int := #[-224, -167, -7, 154]
private def leftRow074 : Array Int := #[-11, -67, -112, 83]
private def leftRow075 : Array Int := #[-99, -35, 70, 17]
private def leftRow076 : Array Int := #[45, 32, 1, -27]
private def leftRow077 : Array Int := #[-227, -93, 144, 61]
private def leftRow078 : Array Int := #[96, 50, -39, -39]
private def leftRow079 : Array Int := #[-436, -250, 137, 206]
private def leftRow080 : Array Int := #[191, 124, -31, -107]
private def leftRow081 : Array Int := #[-30, -15, 15, 11]
private def leftRow082 : Array Int := #[28, -8, -60, 14]
private def leftRow083 : Array Int := #[-134, -84, 29, 76]
private def leftRow084 : Array Int := #[107, 85, 10, -84]
private def leftRow085 : Array Int := #[-11, 62, 136, -85]
private def leftRow086 : Array Int := #[62, 17, -57, -6]
private def leftRow087 : Array Int := #[-134, -55, 88, 37]
private def leftRow088 : Array Int := #[133, 65, -65, -51]
private def leftRow089 : Array Int := #[-190, -103, 73, 85]
private def leftRow090 : Array Int := #[138, 81, -42, -70]
private def leftRow091 : Array Int := #[-425, -270, 89, 244]
private def leftRow092 : Array Int := #[-80, -66, -14, 67]
private def leftRow093 : Array Int := #[-66, -42, 14, 36]
private def leftRow094 : Array Int := #[68, 46, -10, -42]
private def leftRow095 : Array Int := #[-88, -69, -7, 67]
private def leftRow096 : Array Int := #[2, -16, -34, 20]
private def leftRow097 : Array Int := #[-45, 20, 105, -38]
private def leftRow098 : Array Int := #[47, 16, -37, -10]
private def leftRow099 : Array Int := #[-160, -66, 105, 45]
private def leftRow100 : Array Int := #[87, 44, -41, -35]
private def leftRow101 : Array Int := #[-52, -31, 15, 26]
private def leftRow102 : Array Int := #[382, 209, -150, -179]
private def leftRow103 : Array Int := #[-153, -92, 42, 81]
private def leftRow104 : Array Int := #[23, 8, -20, -5]
private def leftRow105 : Array Int := #[-104, -62, 31, 56]
private def leftRow106 : Array Int := #[223, 145, -42, -135]
private def leftRow107 : Array Int := #[-88, -59, 13, 55]
private def leftRow108 : Array Int := #[101, 72, -7, -69]
private def leftRow109 : Array Int := #[22, 24, 16, -26]
private def leftRow110 : Array Int := #[-44, -57, -49, 63]
private def leftRow111 : Array Int := #[-33, -18, 14, 16]
private def leftRow112 : Array Int := #[22, 1, -33, 3]
private def leftRow113 : Array Int := #[-80, -57, 8, 57]
private def leftRow114 : Array Int := #[-26, -57, -69, 74]
private def leftRow115 : Array Int := #[-21, -6, 21, 3]
private def leftRow116 : Array Int := #[60, 19, -54, -12]
private def leftRow117 : Array Int := #[-103, -42, 71, 32]
private def leftRow118 : Array Int := #[72, 34, -40, -28]
private def leftRow119 : Array Int := #[-139, -70, 69, 59]
private def leftRow120 : Array Int := #[295, 162, -119, -142]
private def leftRow121 : Array Int := #[-119, -69, 39, 62]
private def leftRow122 : Array Int := #[54, 31, -19, -28]
private def leftRow123 : Array Int := #[-31, -18, 12, 16]
private def leftRow124 : Array Int := #[281, 158, -112, -144]
private def leftRow125 : Array Int := #[-200, -121, 59, 113]
private def leftRow126 : Array Int := #[82, 51, -22, -48]
private def leftRow127 : Array Int := #[-11, -2, 13, 1]
private def leftRow128 : Array Int := #[131, 83, -31, -79]
private def leftRow129 : Array Int := #[2, 9, 16, -9]
private def leftRow130 : Array Int := #[120, 73, -37, -70]
private def leftRow131 : Array Int := #[-282, -183, 63, 179]
private def leftRow132 : Array Int := #[-166, -117, 19, 118]
private def leftRow133 : Array Int := #[-15, -7, 8, 5]
private def leftRow134 : Array Int := #[56, 36, -13, -34]
private def leftRow135 : Array Int := #[-58, -38, 12, 37]
private def leftRow136 : Array Int := #[92, 63, -14, -63]
private def leftRow137 : Array Int := #[88, 70, 7, -72]
private def leftRow138 : Array Int := #[22, 12, -9, -11]
private def leftRow139 : Array Int := #[71, 64, 21, -68]
private def leftRow140 : Array Int := #[17, 7, -13, -5]
private def leftRow141 : Array Int := #[-40, -24, 14, 23]
private def leftRow142 : Array Int := #[88, 60, -14, -60]
private def leftRow143 : Array Int := #[129, 104, 13, -110]
private def leftRow144 : Array Int := #[-23, -25, -16, 29]
private def leftRow145 : Array Int := #[-18, -10, 7, 8]
private def leftRow146 : Array Int := #[16, 7, -10, -6]
private def leftRow147 : Array Int := #[5, 20, 35, -25]
private def leftRow148 : Array Int := #[79, 51, -18, -50]
private def leftRow149 : Array Int := #[82, 71, 19, -76]
private def leftRow150 : Array Int := #[-13, -19, -20, 23]
private def leftRow151 : Array Int := #[-9, 4, 21, -7]
private def leftRow152 : Array Int := #[25, 11, -16, -9]
private def leftRow153 : Array Int := #[-74, -49, 14, 48]
private def leftRow154 : Array Int := #[-61, -56, -18, 60]
private def leftRow155 : Array Int := #[6, 14, 20, -18]
private def leftRow156 : Array Int := #[15, 7, -8, -6]
private def leftRow157 : Array Int := #[-3, 9, 23, -12]
private def leftRow158 : Array Int := #[21, 10, -12, -8]
private def leftRow159 : Array Int := #[-21, -11, 11, 9]
private def leftRow160 : Array Int := #[16, 6, -13, -5]
private def leftRow161 : Array Int := #[6, 24, 38, -31]
private def leftRow162 : Array Int := #[22, 8, -17, -6]
private def leftRow163 : Array Int := #[-36, -22, 9, 20]
private def leftRow164 : Array Int := #[15, 7, -9, -6]
private def leftRow165 : Array Int := #[-16, -8, 9, 7]
private def leftRow166 : Array Int := #[-4, -15, -26, 18]
private def leftRow167 : Array Int := #[-13, 0, 20, -2]
private def leftRow168 : Array Int := #[18, 4, -20, -2]
private def leftRow169 : Array Int := #[-30, -7, 34, 3]
private def leftRow170 : Array Int := #[38, 18, -24, -16]
private def leftRow171 : Array Int := #[-98, -60, 32, 59]
private def leftRow172 : Array Int := #[-37, -37, -18, 43]
private def leftRow173 : Array Int := #[-15, -7, 9, 5]
private def leftRow174 : Array Int := #[18, -1, -30, 5]
private def leftRow175 : Array Int := #[-53, -24, 33, 18]
private def leftRow176 : Array Int := #[23, 11, -13, -10]
private def leftRow177 : Array Int := #[-30, -17, 13, 15]
private def leftRow178 : Array Int := #[28, 17, -9, -16]
private def leftRow179 : Array Int := #[-2, 5, 15, -7]
private def leftRow180 : Array Int := #[11, -2, -22, 4]
private def leftRow181 : Array Int := #[-28, -10, 24, 8]
private def leftRow182 : Array Int := #[48, 23, -28, -20]
private def leftRow183 : Array Int := #[-86, -51, 30, 49]
private def leftRow184 : Array Int := #[-22, -22, -12, 24]
private def leftRow185 : Array Int := #[-14, -3, 15, 2]
private def leftRow186 : Array Int := #[42, 21, -24, -18]
private def leftRow187 : Array Int := #[-8, -2, 9, 1]
private def leftRow188 : Array Int := #[20, 6, -21, -4]
private def leftRow189 : Array Int := #[-52, -22, 37, 19]
private def leftRow190 : Array Int := #[51, 27, -23, -25]
private def leftRow191 : Array Int := #[-14, -6, 9, 5]
private def leftRow192 : Array Int := #[28, 14, -15, -13]
private def leftRow193 : Array Int := #[-41, -27, 9, 27]
private def leftRow194 : Array Int := #[-13, -19, -20, 22]
private def leftRow195 : Array Int := #[-15, -4, 16, 2]
private def leftRow196 : Array Int := #[22, 8, -19, -6]
private def leftRow197 : Array Int := #[-26, -12, 18, 10]
private def leftRow198 : Array Int := #[25, 13, -14, -12]
private def leftRow199 : Array Int := #[-46, -21, 31, 19]
private def leftRow200 : Array Int := #[124, 70, -51, -68]
private def leftRow201 : Array Int := #[18, 18, 10, -20]
private def leftRow202 : Array Int := #[25, 8, -23, -6]
private def leftRow203 : Array Int := #[-41, -20, 23, 19]
private def leftRow204 : Array Int := #[46, 25, -22, -23]
private def leftRow205 : Array Int := #[-38, -21, 17, 20]
private def leftRow206 : Array Int := #[70, 41, -25, -40]
private def leftRow207 : Array Int := #[-8, -3, 8, 2]
private def leftRow208 : Array Int := #[71, 42, -25, -41]
private def leftRow209 : Array Int := #[2, 3, 5, -4]
private def leftRow210 : Array Int := #[19, 11, -7, -11]
private def leftRow211 : Array Int := #[1, 6, 11, -7]
private def leftRow212 : Array Int := #[16, 0, -26, 4]
private def leftRow213 : Array Int := #[-26, -12, 15, 11]
private def leftRow214 : Array Int := #[21, 11, -10, -10]
private def leftRow215 : Array Int := #[-22, -12, 10, 12]
private def leftRow216 : Array Int := #[17, 7, -14, -6]
private def leftRow217 : Array Int := #[-29, -16, 13, 16]
private def leftRow218 : Array Int := #[36, 22, -12, -22]
private def leftRow219 : Array Int := #[7, 15, 21, -19]
private def leftRow220 : Array Int := #[20, 10, -12, -8]
private def leftRow221 : Array Int := #[-15, -5, 12, 5]
private def leftRow222 : Array Int := #[28, 13, -17, -12]
private def leftRow223 : Array Int := #[-77, -42, 37, 39]
private def leftRow224 : Array Int := #[7, 1, -8, -1]
private def leftRow225 : Array Int := #[-27, -13, 15, 13]
private def leftRow226 : Array Int := #[42, 22, -20, -21]
private def leftRow227 : Array Int := #[-58, -33, 24, 32]
private def leftRow228 : Array Int := #[52, 33, -14, -33]
private def leftRow229 : Array Int := #[5, 7, 6, -8]
private def leftRow230 : Array Int := #[4, -5, -19, 8]
private def leftRow231 : Array Int := #[-29, -12, 23, 10]
private def leftRow232 : Array Int := #[28, 14, -15, -13]
private def leftRow233 : Array Int := #[-68, -37, 30, 36]
private def leftRow234 : Array Int := #[21, 11, -11, -11]
private def leftRow235 : Array Int := #[-48, -28, 18, 27]
private def leftRow236 : Array Int := #[5, 1, -7, 0]
private def leftRow237 : Array Int := #[-36, -20, 16, 19]
private def leftRow238 : Array Int := #[17, 9, -9, -8]
private def leftRow239 : Array Int := #[-27, -15, 13, 15]
private def leftRow240 : Array Int := #[41, 26, -12, -26]
private def leftRow241 : Array Int := #[-6, 3, 16, -6]
private def leftRow242 : Array Int := #[17, 9, -9, -8]
private def leftRow243 : Array Int := #[-25, -14, 10, 14]
private def leftRow244 : Array Int := #[21, 10, -13, -10]
private def leftRow245 : Array Int := #[-49, -29, 18, 29]
private def leftRow246 : Array Int := #[23, 13, -10, -12]
private def leftRow247 : Array Int := #[-47, -29, 16, 29]
private def leftRow248 : Array Int := #[35, 22, -11, -22]
private def leftRow249 : Array Int := #[17, 14, 3, -15]
private def leftRow250 : Array Int := #[7, 1, -9, 0]
private def leftRow251 : Array Int := #[-19, -11, 8, 11]
private def leftRow252 : Array Int := #[-1, -7, -15, 9]
private def leftRow253 : Array Int := #[-24, -9, 20, 7]
private def leftRow254 : Array Int := #[30, 15, -17, -14]
private def leftRow255 : Array Int := #[-49, -28, 18, 28]
private def leftRow256 : Array Int := #[2, -2, -8, 3]
private def leftRow257 : Array Int := #[-23, -11, 12, 11]
private def leftRow258 : Array Int := #[79, 45, -34, -44]
private def leftRow259 : Array Int := #[-17, -9, 8, 9]
private def leftRow260 : Array Int := #[15, 8, -8, -8]
private def leftRow261 : Array Int := #[-16, -9, 8, 9]
private def leftRow262 : Array Int := #[26, 16, -9, -16]
private def leftRow263 : Array Int := #[-5, -1, 7, 0]
private def leftRow264 : Array Int := #[18, 5, -19, -4]
private def leftRow265 : Array Int := #[-29, -17, 11, 17]
private def leftRow266 : Array Int := #[7, 2, -8, -2]
private def leftRow267 : Array Int := #[-15, -6, 12, 5]
private def leftRow268 : Array Int := #[33, 17, -17, -17]
private def leftRow269 : Array Int := #[-29, -16, 14, 16]
private def leftRow270 : Array Int := #[147, 84, -62, -83]
private def leftRow271 : Array Int := #[27, 18, -7, -18]
private def leftRow272 : Array Int := #[11, 5, -8, -5]
private def leftRow273 : Array Int := #[-31, -18, 12, 18]
private def leftRow274 : Array Int := #[12, 5, -8, -5]
private def leftRow275 : Array Int := #[-43, -26, 17, 26]
private def leftRow276 : Array Int := #[12, 6, -7, -5]
private def leftRow277 : Array Int := #[-24, -13, 11, 13]
private def leftRow278 : Array Int := #[47, 28, -17, -28]
private def leftRow279 : Array Int := #[-2, 0, 3, 0]
private def leftRow280 : Array Int := #[30, 18, -12, -18]
private def leftRow281 : Array Int := #[71, 50, -10, -52]
private def leftRow282 : Array Int := #[-5, -6, -5, 7]
private def leftRow283 : Array Int := #[-7, -1, 9, 0]
private def leftRow284 : Array Int := #[18, 9, -10, -8]
private def leftRow285 : Array Int := #[-17, -9, 9, 8]
private def leftRow286 : Array Int := #[16, 8, -9, -8]
private def leftRow287 : Array Int := #[-43, -23, 21, 23]
private def leftRow288 : Array Int := #[71, 41, -29, -40]
private def leftRow289 : Array Int := #[-21, -12, 9, 12]
private def leftRow290 : Array Int := #[39, 24, -13, -24]
private def leftRow291 : Array Int := #[-12, -6, 8, 5]
private def leftRow292 : Array Int := #[99, 60, -35, -61]
private def leftRow293 : Array Int := #[38, 25, -10, -26]
private def leftRow294 : Array Int := #[-45, -31, 9, 32]
private def leftRow295 : Array Int := #[47, 32, -9, -34]
private def leftRow296 : Array Int := #[2, 0, -4, 0]
private def leftRow297 : Array Int := #[-10, -5, 6, 4]
private def leftRow298 : Array Int := #[30, 18, -11, -18]
private def leftRow299 : Array Int := #[47, 33, -7, -34]
private def leftRow300 : Array Int := #[-6, -6, -2, 6]
private def leftRow301 : Array Int := #[8, 8, 4, -9]
private def leftRow302 : Array Int := #[-1, -3, -5, 4]
private def leftRow303 : Array Int := #[2, 5, 8, -6]
private def leftRow304 : Array Int := #[6, 2, -5, -2]
private def leftRow305 : Array Int := #[-8, -1, 9, 1]
private def leftRow306 : Array Int := #[11, 5, -8, -4]
private def leftRow307 : Array Int := #[-12, -5, 8, 5]
private def leftRow308 : Array Int := #[12, 5, -10, -5]
private def leftRow309 : Array Int := #[-26, -13, 15, 13]
private def leftRow310 : Array Int := #[68, 37, -31, -37]
private def leftRow311 : Array Int := #[3, 2, 1, -3]
private def leftRow312 : Array Int := #[9, 4, -5, -4]
private def leftRow313 : Array Int := #[-10, -5, 7, 5]
private def leftRow314 : Array Int := #[16, 7, -13, -6]
private def leftRow315 : Array Int := #[-49, -27, 22, 27]
private def leftRow316 : Array Int := #[6, 3, -5, -2]
private def leftRow317 : Array Int := #[-42, -24, 17, 24]
private def leftRow318 : Array Int := #[-4, -4, -1, 4]
private def leftRow319 : Array Int := #[-13, -7, 7, 7]
private def leftRow320 : Array Int := #[32, 19, -12, -19]
private def leftRow321 : Array Int := #[-5, -2, 4, 2]
private def leftRow322 : Array Int := #[-28, -20, 3, 21]
private def leftRow323 : Array Int := #[-5, -2, 5, 1]
private def leftRow324 : Array Int := #[3, 0, -5, 0]
private def leftRow325 : Array Int := #[-20, -9, 13, 9]
private def leftRow326 : Array Int := #[18, 10, -9, -10]
private def leftRow327 : Array Int := #[-49, -29, 18, 30]
private def leftRow328 : Array Int := #[-62, -40, 15, 42]
private def leftRow329 : Array Int := #[3, 3, 2, -4]
private def leftRow330 : Array Int := #[9, 4, -5, -4]
private def leftRow331 : Array Int := #[-4, -2, 3, 1]
private def leftRow332 : Array Int := #[-16, -13, -2, 15]
private def leftRow333 : Array Int := #[1, 4, 6, -5]
private def leftRow334 : Array Int := #[9, 4, -7, -3]
private def leftRow335 : Array Int := #[-17, -10, 8, 10]
private def leftRow336 : Array Int := #[-22, -17, -2, 19]
private def leftRow337 : Array Int := #[1, 3, 5, -4]
private def leftRow338 : Array Int := #[5, 1, -7, 0]
private def leftRow339 : Array Int := #[-5, 1, 11, -3]
private def leftRow340 : Array Int := #[14, 5, -11, -4]
private def leftRow341 : Array Int := #[-7, -4, 5, 3]
private def leftRow342 : Array Int := #[16, 8, -8, -8]
private def leftRow343 : Array Int := #[-8, -4, 5, 3]
private def leftRow344 : Array Int := #[11, 5, -7, -5]
private def leftRow345 : Array Int := #[-17, -8, 10, 8]
private def leftRow346 : Array Int := #[14, 7, -8, -7]
private def leftRow347 : Array Int := #[-16, -8, 8, 8]
private def leftRow348 : Array Int := #[15, 9, -7, -8]
private def leftRow349 : Array Int := #[-8, -4, 5, 4]
private def leftRow350 : Array Int := #[56, 28, -32, -27]
private def leftRow351 : Array Int := #[8, 5, -1, -6]
private def leftRow352 : Array Int := #[11, 5, -8, -5]
private def leftRow353 : Array Int := #[-14, -7, 8, 7]
private def leftRow354 : Array Int := #[16, 9, -9, -8]
private def leftRow355 : Array Int := #[-15, -7, 9, 7]
private def leftRow356 : Array Int := #[30, 16, -15, -16]
private def leftRow357 : Array Int := #[-38, -21, 18, 21]
private def leftRow358 : Array Int := #[11, 6, -6, -5]
private def leftRow359 : Array Int := #[-22, -12, 11, 12]
private def leftRow360 : Array Int := #[46, 26, -19, -27]
private def leftRow361 : Array Int := #[-20, -11, 9, 11]
private def leftRow362 : Array Int := #[45, 26, -18, -27]
private def leftRow363 : Array Int := #[27, 17, -7, -18]
private def leftRow364 : Array Int := #[-5, -4, -1, 5]
private def leftRow365 : Array Int := #[0, 2, 5, -3]
private def leftRow366 : Array Int := #[11, 5, -7, -4]
private def leftRow367 : Array Int := #[-40, -21, 21, 21]
private def leftRow368 : Array Int := #[38, 21, -17, -21]
private def leftRow369 : Array Int := #[17, 11, -5, -11]
private def leftRow370 : Array Int := #[5, 2, -4, -2]
private def leftRow371 : Array Int := #[-12, -7, 6, 6]
private def leftRow372 : Array Int := #[21, 12, -10, -12]
private def leftRow373 : Array Int := #[-5, -2, 4, 2]
private def leftRow374 : Array Int := #[7, 3, -5, -3]
private def leftRow375 : Array Int := #[-29, -16, 14, 16]
private def leftRow376 : Array Int := #[3, 1, -2, -1]
private def leftRow377 : Array Int := #[-7, -3, 5, 3]
private def leftRow378 : Array Int := #[13, 7, -8, -7]
private def leftRow379 : Array Int := #[-64, -35, 29, 35]
private def leftRow380 : Array Int := #[-13, -8, 4, 9]
private def leftRow381 : Array Int := #[-2, 0, 2, 0]
private def leftRow382 : Array Int := #[12, 7, -6, -7]
private def leftRow383 : Array Int := #[7, 5, 1, -6]
private def leftRow384 : Array Int := #[6, 3, -5, -2]
private def leftRow385 : Array Int := #[-25, -13, 13, 13]
private def leftRow386 : Array Int := #[3, 1, -3, -1]
private def leftRow387 : Array Int := #[-20, -10, 11, 10]
private def leftRow388 : Array Int := #[8, 4, -5, -4]
private def leftRow389 : Array Int := #[-21, -12, 10, 11]
private def leftRow390 : Array Int := #[42, 24, -19, -24]
private def leftRow391 : Array Int := #[-7, -4, 4, 4]
private def leftRow392 : Array Int := #[8, 4, -4, -4]
private def leftRow393 : Array Int := #[-10, -6, 5, 6]
private def leftRow394 : Array Int := #[1, -1, -3, 1]
private def leftRow395 : Array Int := #[-19, -11, 9, 11]
private def leftRow396 : Array Int := #[6, 3, -4, -3]
private def leftRow397 : Array Int := #[-39, -20, 23, 19]
private def leftRow398 : Array Int := #[15, 8, -8, -8]
private def leftRow399 : Array Int := #[-19, -11, 8, 11]
private def leftRow400 : Array Int := #[-7, -5, 1, 5]
private def leftRow401 : Array Int := #[-8, -4, 5, 4]
private def leftRow402 : Array Int := #[31, 17, -14, -17]
private def leftRow403 : Array Int := #[-3, -1, 2, 1]
private def leftRow404 : Array Int := #[5, 3, -3, -2]
private def leftRow405 : Array Int := #[0, 1, 2, -1]
private def leftRow406 : Array Int := #[-1, -2, -2, 2]
private def leftRow407 : Array Int := #[-8, -4, 5, 4]
private def leftRow408 : Array Int := #[9, 2, -10, -2]
private def leftRow409 : Array Int := #[-19, -10, 11, 10]
private def leftRow410 : Array Int := #[18, 10, -10, -10]
private def leftRow411 : Array Int := #[-20, -11, 11, 11]
private def leftRow412 : Array Int := #[143, 77, -71, -77]
private def leftRow413 : Array Int := #[-11, -6, 5, 6]
private def leftRow414 : Array Int := #[-54, -31, 23, 31]
private def leftRow415 : Array Int := #[18, 11, -7, -11]
private def leftRow416 : Array Int := #[-14, -8, 4, 9]
private def leftRow417 : Array Int := #[-10, -5, 5, 5]
private def leftRow418 : Array Int := #[15, 8, -7, -8]
private def leftRow419 : Array Int := #[-16, -9, 8, 9]
private def leftRow420 : Array Int := #[-76, -45, 29, 46]
private def leftRow421 : Array Int := #[8, 5, -2, -5]
private def leftRow422 : Array Int := #[0, -1, -2, 1]
private def leftRow423 : Array Int := #[-5, -3, 3, 3]
private def leftRow424 : Array Int := #[10, 6, -5, -6]
private def leftRow425 : Array Int := #[-11, -6, 6, 6]
private def leftRow426 : Array Int := #[20, 11, -9, -11]
private def leftRow427 : Array Int := #[10, 6, -3, -6]
private def leftRow428 : Array Int := #[2, 1, -2, -1]
private def leftRow429 : Array Int := #[-15, -8, 7, 8]
private def leftRow430 : Array Int := #[28, 15, -13, -16]
private def leftRow431 : Array Int := #[4, 3, 0, -3]
private def leftRow432 : Array Int := #[32, 18, -15, -18]
private def leftRow433 : Array Int := #[12, 7, -4, -8]
private def leftRow434 : Array Int := #[-48, -29, 19, 29]
private def leftRow435 : Array Int := #[37, 22, -14, -23]
private def leftRow436 : Array Int := #[-15, -9, 5, 9]
private def leftRow437 : Array Int := #[54, 33, -19, -34]
private def leftRow438 : Array Int := #[-2, -2, 0, 2]
private def leftRow439 : Array Int := #[15, 10, -4, -10]
private def leftRow440 : Array Int := #[-1, -1, -1, 1]
private def leftRow441 : Array Int := #[1, 1, 0, -1]
private def leftRow442 : Array Int := #[-2, -2, -1, 2]
private def leftRow443 : Array Int := #[-4, -1, 3, 1]
private def leftRow444 : Array Int := #[11, 5, -6, -5]
private def leftRow445 : Array Int := #[23, 13, -10, -13]
private def leftRow446 : Array Int := #[-4, -2, 1, 2]
private def leftRow447 : Array Int := #[10, 6, -3, -6]

def left : Array (Array Int) := #[
leftRow000, leftRow001, leftRow002, leftRow003, leftRow004, leftRow005, leftRow006, leftRow007, leftRow008, leftRow009, leftRow010, leftRow011, leftRow012, leftRow013, leftRow014, leftRow015, leftRow016, leftRow017, leftRow018, leftRow019, leftRow020, leftRow021, leftRow022, leftRow023, leftRow024, leftRow025, leftRow026, leftRow027, leftRow028, leftRow029, leftRow030, leftRow031, leftRow032, leftRow033, leftRow034, leftRow035, leftRow036, leftRow037, leftRow038, leftRow039, leftRow040, leftRow041, leftRow042, leftRow043, leftRow044, leftRow045, leftRow046, leftRow047, leftRow048, leftRow049, leftRow050, leftRow051, leftRow052, leftRow053, leftRow054, leftRow055, leftRow056, leftRow057, leftRow058, leftRow059, leftRow060, leftRow061, leftRow062, leftRow063, leftRow064, leftRow065, leftRow066, leftRow067, leftRow068, leftRow069, leftRow070, leftRow071, leftRow072, leftRow073, leftRow074, leftRow075, leftRow076, leftRow077, leftRow078, leftRow079, leftRow080, leftRow081, leftRow082, leftRow083, leftRow084, leftRow085, leftRow086, leftRow087, leftRow088, leftRow089, leftRow090, leftRow091, leftRow092, leftRow093, leftRow094, leftRow095, leftRow096, leftRow097, leftRow098, leftRow099, leftRow100, leftRow101, leftRow102, leftRow103, leftRow104, leftRow105, leftRow106, leftRow107, leftRow108, leftRow109, leftRow110, leftRow111, leftRow112, leftRow113, leftRow114, leftRow115, leftRow116, leftRow117, leftRow118, leftRow119, leftRow120, leftRow121, leftRow122, leftRow123, leftRow124, leftRow125, leftRow126, leftRow127, leftRow128, leftRow129, leftRow130, leftRow131, leftRow132, leftRow133, leftRow134, leftRow135, leftRow136, leftRow137, leftRow138, leftRow139, leftRow140, leftRow141, leftRow142, leftRow143, leftRow144, leftRow145, leftRow146, leftRow147, leftRow148, leftRow149, leftRow150, leftRow151, leftRow152, leftRow153, leftRow154, leftRow155, leftRow156, leftRow157, leftRow158, leftRow159, leftRow160, leftRow161, leftRow162, leftRow163, leftRow164, leftRow165, leftRow166, leftRow167, leftRow168, leftRow169, leftRow170, leftRow171, leftRow172, leftRow173, leftRow174, leftRow175, leftRow176, leftRow177, leftRow178, leftRow179, leftRow180, leftRow181, leftRow182, leftRow183, leftRow184, leftRow185, leftRow186, leftRow187, leftRow188, leftRow189, leftRow190, leftRow191, leftRow192, leftRow193, leftRow194, leftRow195, leftRow196, leftRow197, leftRow198, leftRow199, leftRow200, leftRow201, leftRow202, leftRow203, leftRow204, leftRow205, leftRow206, leftRow207, leftRow208, leftRow209, leftRow210, leftRow211, leftRow212, leftRow213, leftRow214, leftRow215, leftRow216, leftRow217, leftRow218, leftRow219, leftRow220, leftRow221, leftRow222, leftRow223, leftRow224, leftRow225, leftRow226, leftRow227, leftRow228, leftRow229, leftRow230, leftRow231, leftRow232, leftRow233, leftRow234, leftRow235, leftRow236, leftRow237, leftRow238, leftRow239, leftRow240, leftRow241, leftRow242, leftRow243, leftRow244, leftRow245, leftRow246, leftRow247, leftRow248, leftRow249, leftRow250, leftRow251, leftRow252, leftRow253, leftRow254, leftRow255, leftRow256, leftRow257, leftRow258, leftRow259, leftRow260, leftRow261, leftRow262, leftRow263, leftRow264, leftRow265, leftRow266, leftRow267, leftRow268, leftRow269, leftRow270, leftRow271, leftRow272, leftRow273, leftRow274, leftRow275, leftRow276, leftRow277, leftRow278, leftRow279, leftRow280, leftRow281, leftRow282, leftRow283, leftRow284, leftRow285, leftRow286, leftRow287, leftRow288, leftRow289, leftRow290, leftRow291, leftRow292, leftRow293, leftRow294, leftRow295, leftRow296, leftRow297, leftRow298, leftRow299, leftRow300, leftRow301, leftRow302, leftRow303, leftRow304, leftRow305, leftRow306, leftRow307, leftRow308, leftRow309, leftRow310, leftRow311, leftRow312, leftRow313, leftRow314, leftRow315, leftRow316, leftRow317, leftRow318, leftRow319, leftRow320, leftRow321, leftRow322, leftRow323, leftRow324, leftRow325, leftRow326, leftRow327, leftRow328, leftRow329, leftRow330, leftRow331, leftRow332, leftRow333, leftRow334, leftRow335, leftRow336, leftRow337, leftRow338, leftRow339, leftRow340, leftRow341, leftRow342, leftRow343, leftRow344, leftRow345, leftRow346, leftRow347, leftRow348, leftRow349, leftRow350, leftRow351, leftRow352, leftRow353, leftRow354, leftRow355, leftRow356, leftRow357, leftRow358, leftRow359, leftRow360, leftRow361, leftRow362, leftRow363, leftRow364, leftRow365, leftRow366, leftRow367, leftRow368, leftRow369, leftRow370, leftRow371, leftRow372, leftRow373, leftRow374, leftRow375, leftRow376, leftRow377, leftRow378, leftRow379, leftRow380, leftRow381, leftRow382, leftRow383, leftRow384, leftRow385, leftRow386, leftRow387, leftRow388, leftRow389, leftRow390, leftRow391, leftRow392, leftRow393, leftRow394, leftRow395, leftRow396, leftRow397, leftRow398, leftRow399, leftRow400, leftRow401, leftRow402, leftRow403, leftRow404, leftRow405, leftRow406, leftRow407, leftRow408, leftRow409, leftRow410, leftRow411, leftRow412, leftRow413, leftRow414, leftRow415, leftRow416, leftRow417, leftRow418, leftRow419, leftRow420, leftRow421, leftRow422, leftRow423, leftRow424, leftRow425, leftRow426, leftRow427, leftRow428, leftRow429, leftRow430, leftRow431, leftRow432, leftRow433, leftRow434, leftRow435, leftRow436, leftRow437, leftRow438, leftRow439, leftRow440, leftRow441, leftRow442, leftRow443, leftRow444, leftRow445, leftRow446, leftRow447
]

private def rightRow000 : Array Int := #[-654, 339, -215, 147, -101, 66, -36, 9, 16, -53, 98, -187, 649, 325, -59, 197, 59, -166, 653, 320, -163, -7, 71, 90, 161, -404, 598, 452, 126, -607, -310, 748, 25, 731, -120, 172, 224, 306, -670, -66, 740, 320, -871, -422, -413, 608, -66, -621, 360, -567, -888, 148, -926, 346, 425, 514, -1538, 658, -1015, -387, -809, 782, -1257, 1661, -345]
private def rightRow001 : Array Int := #[-318, 162, -100, 64, -40, 21, -5, -11, 24, -45, 69, -114, 343, 133, 0, 66, 62, -117, 359, 118, -38, -48, 82, -5, 132, -255, 355, 163, 126, -370, -84, 299, 90, 285, 25, -3, 208, 56, -235, -143, 493, 42, -319, -354, -70, 164, 127, -501, 376, -502, -267, -149, -263, -80, 546, -37, -542, -29, -145, -893, 188, -438, 436, -2937, -169]
private def rightRow002 : Array Int := #[277, -149, 101, -76, 60, -49, 40, -33, 27, -15, 1, 30, -208, -180, 79, -136, 42, -6, -168, -193, 139, -83, 66, -125, 46, 25, -77, -250, 83, 46, 214, -329, 135, -318, 180, -195, 124, -226, 285, -179, 109, -236, 279, -201, 243, -243, 252, -302, 311, -363, 161, -293, 110, -258, 533, -198, -292, -113, -124, -854, -29, -7, -462, 290, 144]
private def rightRow003 : Array Int := #[270, -136, 82, -51, 29, -12, -3, 17, -29, 47, -68, 106, -294, -94, -15, -37, -67, 111, -300, -70, 6, 61, -87, 31, -125, 212, -281, -79, -121, 282, 14, -147, -100, -123, -64, 54, -167, 30, 54, 133, -289, 58, 44, 212, -69, 50, -138, 223, -189, 200, -122, 164, -179, 187, -142, 234, -421, 305, -428, -22, -417, 373, -574, -557, 144]

def right : Array (Array Int) := #[
rightRow000, rightRow001, rightRow002, rightRow003
]

private def firstLowerDataRow000 : Array Int := #[-0x1ff7d578834f86282,
0x105609d6ae6bc7238,
-0xa1a8b609c7d965c8,
0x694103c5732ecee8,
-0x43260367ec50ea4a,
0x24f79bb9d480a4a0,
-0xbc7bd21d47dd551,
-0xc9ff6a933a04a18,
0x215fa7fa3c453acf,
-0x4116c87dcc5f21d2,
0x662e6a83cac6ef04,
-0xad3d3580c14a64bb,
0x21209f5acbc28e3de,
0xd7262435df5f4cbf,
-0x924dca8f26dcec6,
0x6ed2a762a3b6fb32]
private def firstLowerDataRow001 : Array Int := #[0x55bfd97b518eecfd,
-0xa99514df85815f74,
0x21826694df9376dac,
0xbd8cf7d2e98b3f3a,
-0x45dfc463cb40e354,
-0x3c51bb44a18187b0,
0x6c7bd46a99cb14f1,
0x4e2346d3e8d0d54,
0xb2e02bae81c6eb59,
-0x1656f275e10392510,
0x1efa0ed25249f31d4,
0xf8a6436bb6ec7556,
0xa1d8c64f134c0c8d,
-0x1f6a746ea77f44b1f,
-0x878127ef505e5203,
0x1acdb30b5aaf5c921]
private def firstLowerDataRow002 : Array Int := #[0x66966542fcaaf4b7,
0x190b2d3c2282d50e4,
0xc3bda3f3e867d51,
0xf4b52f37f95494e,
0xf57592c46ee5b191,
0x5b8e480496d7b099,
-0x13eb00a66506f1704,
-0x9a3ce29ff992111e,
0x23c31058f6a344f81,
0x497f2dc758bf1659,
-0x18f83b0b8d0194652,
-0x17bfcaeffb3bdca1e,
-0x6b3f6a5310f2514e,
0xcee3a49894c1b339,
0x69c7f06fe7c2a302,
-0x1ed4afa6679ab304f]
private def firstLowerDataRow003 : Array Int := #[0x15c4e999e40f0b6c5,
-0x1cf7e76ac98453257,
-0x1228b2ea16370ca12,
-0x67db1e0ceff827fb,
-0x1100cda442ed7973c,
-0x1e71f13a977698bd,
0x19196559ee06f90a1,
0xe357c42e4852be7,
-0x1bf835ea9cbe1a473,
0x1f3f94cd07a23ff9,
-0x9926b6fef8d728ef,
-0x1c958d571305cfdd5,
0x12b21d36efb9e036,
-0x690fcf782fe99119,
0x2281f092b30b53fa,
-0x1ff195efdd4462780]
private def firstLowerDataRow004 : Array Int := #[-0x10f7a6b9bfa24181e,
-0x8916369d7bf27b1f,
0x1986f0467ac246d55,
-0x2017d3c138acc9bbf,
0x6e7c1dd82b615058,
-0x17f5e33b57362e5d2,
0x5ac5d26783898c68,
-0x3ad78a7f24b32af7,
-0x115b6215849ba6bda,
-0x8d4d8b239ff08cd3,
0x1a923baf942050fbb,
0xdd668ec131783ec4,
0x21d891b729bccf5df,
-0x19714edf1afbf8717,
0x9fa02ea25b3ffa98,
-0x8fee9629e29943e2]
private def firstLowerDataRow005 : Array Int := #[0x23f8adeb8413d4bc1,
-0x235e8f3d16fc2982e,
0x78f8792a70692d57,
0x16cc9b1f5e46fdd07,
-0xbea7c7172ee4169,
0x159ec2c7a0b595d91,
0x1e38b435f202d5ff,
0x207105120843b9b3,
0x61a4d47b56fbf682,
0x6be57a073a9eeefe,
0x183878de45e51e566,
-0xeb46c8fd63db6c1b,
0xe25a8db1b1562b2d,
-0x70cd49314febae81,
0x2a97ad87f3fcfcd92,
-0x871f0b616e029acd]
private def firstLowerDataRow006 : Array Int := #[0x283dc4ca3c471d80f,
-0x1e065cf141691abb,
0x2ba863221a8918a20,
-0x1a24a883e8593aabe,
0xeb13bd0318c8efe4,
-0x19080dfdaf5a4d97a,
-0xa629e6571b053337,
0x884b9a357352651f,
0x2b32a9c859b35f3e7,
-0x18f34afcac4d3045d,
0x142fc2c080848d41,
0x4ef1f2f93b674ac8,
0x4d5761797da3b893,
-0x28621ddcaeaeaa7a3,
0x162e56afc887c6ffd,
-0x1de619de2cb6124da]
private def firstLowerDataRow007 : Array Int := #[0xef66b48be3b98bb7,
0x5ee5a642dc42bace,
-0x1f2a67f9f7be061dc,
0x1f379d9fb15718e3,
0xfdb05fdb1b206eaa,
0xd06286d563790f0,
0x181d62ca677088630,
-0x134fad8b35130e950,
-0x1482d99f4a94ac0c2,
-0x1b4f1926f61d43805,
-0x7f7fd61f2b9a6a95,
-0x23f1bb48fb43b6232,
0x15276e88336ecc32c,
0x3760b21e39d1c35d,
0x325447312137dfcb,
-0x1919ac52d1c734ccf]
private def firstLowerDataRow008 : Array Int := #[0xdd0c9e36d9eac7f,
-0x15a8dd053b6c198a9,
-0x2720f474334a1328,
-0x2fc85a39750c3dfd6,
0x1cf9c0563ccd59dc9,
0x597b7e8f9c72440,
-0x805982f3ff09d29e,
-0xac6ae1f3358b1045,
-0x25a89e2b322a75f9,
0x12685f4cf6b21fe05,
0x208bc8e057ace6117,
-0x7d2acc574db2d5cc,
-0x18ee220aa51ffd2fe,
-0x12e058f0da5ed42e8,
-0x94b35187828ae8d,
0xfc1286eee4a8191]
private def firstLowerDataRow009 : Array Int := #[-0x1296d93f6bbb7ec8c,
-0xc77b8d761598a402,
0x2f90cd9115caef2c8,
0xd66b47be2219b377,
-0xb0dbafabcbd5ce2c,
-0x2397394582d04739e,
0x125301a10eee1f865,
-0x12c3c80d57cb27063,
0x7055ec2601e674cf,
0x2aa747c3217ee6bd,
-0x754c7b6f2b2d0ff6,
0x163a6a92763087375,
0x13de346f9acaa418b,
0x1405d78420f3681d6,
-0xc3f82fa8404a4f4d,
0x11c9315d5d70b0a72]
private def firstLowerDataRow010 : Array Int := #[0x160f7ed3c4b8a78cf,
-0x202c0f4b85670c83b,
0x7e3eba347dd2721e,
-0xe37ca8b04d9bb63b,
-0x2777a640acf318cb,
0x146b7c4798b706afc,
0x41de934c1a38c8a,
0x11204ee9889ac5492,
0x15cc09da62f510068,
0x22e0b487642a43f1,
-0x1a29ebe955c0fc034,
0xf7d4ffbdc9f5ac67,
-0xf801b733b752523f,
-0x151689e1fe525dbcc,
0x21c4db7d09e70ddcd,
0xa4638da998e5a4d5]
private def firstLowerDataRow011 : Array Int := #[0x1bd335c6f4068ee1f,
0xf4eeb215be4cefd7,
0x10f742b0476858b84,
-0x195c4bbaa11b35168,
0x204f1dd3897fd04bf,
-0x16190055d73be26d2,
0x85be71c19b8e854b,
-0xf78c58577586299a,
-0xc928581f87006dfe,
0x15d818d96df9f5c4c,
-0x71d47c7d99fce3e9,
-0xa3cbff01bef9faa,
0x8b8734582b662e6b,
0x1546a31734c94eed3,
-0x945cc54bce70ae89,
-0x17841e2c27f2fae5f]
private def firstLowerDataRow012 : Array Int := #[-0xd442781c04eeaa84,
-0x241c8e53442533201,
-0x2717bed99549bcad,
0x16269070f3147c574,
0x1921a11b426f03b44,
0x48f33877b8f7fa5e,
-0xc68932b05997615d,
0x5221ec69561be244,
-0x80d16f38d9bdf2fb,
-0x2466c028f4cc23ea2,
0x4df3a8988df419c5,
-0x24ed6d2e863ee3153,
0x1129cbba91a8eeaf,
-0x3ad59b770c2b278d,
-0x2bb7503ae6e57be2,
-0x2b97d71a353ac2332]
private def firstLowerDataRow013 : Array Int := #[0x104eeb97e9602f78a,
0x6c52544d573ecf6b,
0xfad79d5626b0e059,
-0x307d082fd578bd9e7,
-0x17cd9fe19ffa7bcf0,
-0x263308d15f77cbacd,
0x140149355ca112be5,
-0xfd613f4d605b118d,
0x6955b964fcbfd11e,
0x139c11d56574bc4df,
0x2064b542cb83926d1,
-0x9b1956c152220302,
-0xc73ad609fe1ba00a,
-0x16c0b0aecc9cee7c0,
-0x7f351656479512e1,
-0x1fb1f2df99d714f5]
private def firstLowerDataRow014 : Array Int := #[0xea34b4d2783a90f6,
-0x1c57052460a5257cf,
0x8823b2053c97d73c,
0x1c921ccb218c194a2,
0x452b0d75bbbf62cf,
-0xe3a50bb7fb5e89ac,
0x29f971e9da83aae73,
-0x1add02c6ae32201dd,
0x1b7bf2186ebe5be74,
-0x2aa883757468fab48,
0xa4639f53238bdddc,
0xcd46a55d36d56a9a,
0x1f508de7f5610a7db,
0x5c114d29ff599296,
0x30c2699706c90f6cb,
0x1ba008cb48c889821]
private def firstLowerDataRow015 : Array Int := #[-0x63bc613762fd9805,
0x7d8332e2931730eb,
-0x32fc1939f41e7206,
-0x22c7687ee12cb4778,
0x2f2023f14e989cf5f,
-0x12704717f85ede2da,
0x87dbe02378ab3790,
0xbfa4841363e1f546,
0x2c6c3677406fe1ed4,
-0x6e6edb787c1fffde,
-0x822647a8928cdc4d,
-0x13a284c59ae95eaac,
0x184002594854b6560,
-0xb7152bceb83ee95d,
-0xcdc3955328a5b127,
-0xe4462b44ce1cc2f3]
private def firstLowerDataRow016 : Array Int := #[0xc03f0897ba7e2731,
0xf27fea9b917408d6,
0x2224ccdfe699c91c8,
-0x11cb0ab26426a10bd,
0x12f48c2b44b1a2952,
-0x106756b83298a4b68,
0xb69d3dfe0aa16234,
-0x340e029c8052ea958,
-0x11bca276740036df0,
-0x22ef89a8fd41ecf62,
0x1898d7f68e8aba9c7,
0x127de055dbfd186c9,
-0x12e78157e7a3feca2,
0x9bd8a1ab3a2bb9c8,
-0x1a8626d0df8bc5c7c,
-0xf44235fe756a0099]
private def firstLowerDataRow017 : Array Int := #[-0x14c2519ea3eebc21b,
-0xed8f32d32d7347d0,
-0x7ddcf34f19bf2bcd,
-0x1af3ef9accc6a8de2,
0xf9076ee09c0b8265,
0x1f0ec209ca6b1e04,
-0x52c8a80ae1bed299,
0x3b4ba19aa88e56e,
0x164751d4cfbc81a48,
-0x2a884e12fca601cd,
-0x9a2a528f4b59215,
-0x29c1add62c46a1957,
-0x163abbe068cbdd0cf,
-0x188291e79d19bea32,
0xb56e036765ef3a48,
0x524ba40745b89b06]
private def firstLowerDataRow018 : Array Int := #[0x1d394fed4257d9109,
-0xbbb4bb3829aa8a03,
0x630bb4fdd50679b1,
0x20facfb3ca8cc260,
-0x2703213d75bbce50b,
-0x166632f8b5b6784bd,
0x215b2bb281bfe1b1d,
-0xe8fabfd7f09e92ae,
-0x15faf5607ec43ecf,
0x1cb334f0c5ce74edc,
-0x46aa88a3f8d97807,
0x15342d5bc68a1f753,
0x10d24280f2008de6a,
0xa5ceb43d774e3ef1,
0x3f26b6796b675028,
-0x3a7840921c459bd8]
private def firstLowerDataRow019 : Array Int := #[-0x1cb6137d7da91af7a,
-0x9e162439dbe3863c,
0x3630dffd6eda5b73,
0xae8b4c0c4860a204,
0x140ee69b3bcc023b3,
0x13b62d68041625172,
0x16a462fdd2c12d2f,
0xd9f32a81bdfcd8ca,
-0x6772e88e1359e3e2,
-0x2f5fadf428b55cb8d,
0x1127ccab17e5718ec,
-0x287aee0559aa131e,
0x26ecf4b831aab6790,
-0x13a5370781d0e9252,
0xba69a85b4b838e3c,
0x240daafa26420d846]
private def firstLowerDataRow020 : Array Int := #[0x194996a42638ed1f0,
0x111311425fedd990,
-0x158f26b8fa7d6f261,
0x65d7521a17a1aff6,
0x6369cc71d1a51a7,
-0x2689d9e7948bbbbf,
-0xcb3a4438e2fa51db,
-0x15c1d185fa1b1ee2b,
0x1abfdba1b175ecfd5,
0x1a7bd9ff461f5f48e,
0x1406b1d89db469ee9,
-0x1f0d2dfe4044426b6,
0x24225f6ab6a654bc,
-0xd5eaa19ef262548,
-0x700272121452a689,
-0x2878873a7f1bae969]
private def firstLowerDataRow021 : Array Int := #[0x91427603cb22c776,
0xf75c69cbf2f627b5,
0x10f4509dea24308eb,
0x114c603cfe9b9aa34,
0x8ad23d4c401e4ddc,
-0x6528aa20ba4660d8,
-0x919f364892bfb7f7,
-0x175a83177182c4535,
0xb54f9150a3e9b7b2,
-0x2dddb3d84c674dbc4,
0x16612428e467ce327,
-0x180fd974bede52943,
-0xc7fc5ce5253757b2,
-0x1e9d8d3526c9af82,
0xf2e0ec3e1ddaa696,
-0x9a7ea801c0713978]
private def firstLowerDataRow022 : Array Int := #[-0x1021354cff47f1f30,
-0x4917c9b1180ef05a,
-0x199bb5ea84fd2227b,
-0x1953825c436fd0762,
-0x12a5a736f1f7d8bb2,
-0x1e86f8e072e4a4744,
0x39e1626a822b9927b,
-0x51a53b5327a6dfa4,
0xbce71e34e203f23d,
-0xa6424001eed6380f,
-0x4b98efb8deba28a7,
-0x2a2869d62cbe9157e,
0x146941492ad710483,
-0x2e808e9edc6d74392,
0xd8f18e65398d1918,
-0x98c5d12fb174de33]
private def firstLowerDataRow023 : Array Int := #[0x8d49a7ce5e6bcc66,
-0x12a7cd7e0ba6ded7e,
0x6bc800c3bcef4cc1,
-0xb4cca65bee35e6d3,
0x1efb4b9771cbffebb,
-0x4b285d451c85b341,
-0x13589faff822f9548,
-0x10d0d88bb8a0cadeb,
0x3692d1537dd872d2,
-0x11babea53dc67f7a5,
0x2815760f98aee354a,
0x1c0b1b4dc0f7fbfc9,
0xd31be72cdd160b01,
0x10ffa8031a33d4053,
0x162f55f97efa36c52,
-0x6ae8e06a4d8b4501]
private def firstLowerDataRow024 : Array Int := #[-0x116b419bbdb265d47,
-0x108ae4863539b95a4,
0x29d6f552ecd5d1793,
-0x4ab2b2b2c73c854b,
0x1ab057ee6d3840d77,
-0xac9528f21008822d,
0x81d09abd78717754,
0xff0f3188430c76d9,
0x204976ba14e44aed6,
-0xba8db25faf030b34,
-0x24aa40e884d4cd18,
-0x131024be1977bc764,
0x269757d095dbccd8c,
-0x1499a7d4735699891,
0xc07b1ce4f116cdbd,
-0x5302a25037bd351b]
private def firstLowerDataRow025 : Array Int := #[0x3c0b5c84dd96b69fd,
0x51254d3c4dce19a5,
0x3c224f19dd4b051d,
-0x42f6d5ea86fe2042,
-0x1602a832e19ad9eff,
0x27d50aed4dcefaf9,
-0x13e401805369aeed7,
-0x80ff9b5b855fcb3e,
0x55a607ca518d5cf7,
0x6d8eb3229c42316,
-0x202f2e41846f0a0c,
-0x678f4d1a5352424,
-0x1037be03bff14430a,
-0xe46945a174710371,
0x3a2da0c1dcbb6ba2,
-0x30eb03212ea212eac]
private def firstLowerDataRow026 : Array Int := #[0x6f649cab0c1881e0,
-0x4bc372e3cdf8d7a8,
-0x297b4efff3252747,
-0x1333912efbeab3017,
-0x474ab9c218a622d3,
0x10e05efc972a8b612,
0xb8134f574bd8a7b7,
-0xe5fa17e7c9407402,
-0x25cb9d5371057c74d,
0x6faa85542c85ae05,
-0xf7896c7fc08a567a,
-0x30e6c58cc675d1ec1,
0x106b9c050102fc661,
-0x173f7063734de0f55,
0x13bbab9f775cb5dd8,
0x14daa7095fd10b4d3]
private def firstLowerDataRow027 : Array Int := #[-0x1ada416844eb3fb99,
-0x2352fca111f909208,
-0x387b86d8195f5c98,
0x1012eb6532a65c625,
-0x1a19e3f07d31fbd72,
-0x2df3c5d06c2536b1,
0x916797ce9cd2287a,
0xe5d85cc44368ccd2,
0x940c30e04700ce62,
-0x10312f5c86ed91a6e,
0xce04f1d5f4453643,
0x10abaa573041a15c3,
0x13940a6e8cd6cadff,
-0xd5de5fa277e0777e,
-0x7311bec747f82c5a,
-0x2029dd7ecb259b017]
private def firstLowerDataRow028 : Array Int := #[0xb69cd443928eff66,
0xc008f592962948bd,
0x11dfb4e28904484bc,
0x29719aa326dcb4cd,
0x7f2526731d8d51c2,
0xb7db6f32bac0cff3,
-0x1ad97c681f916cfb6,
0x29815b45385ae04c,
0x2c3b2f473eb8514,
0x197c8aa81c0c100b,
0x17473b2a699aaa1fc,
0x1007b8dd9e1da857c,
0x6b69cf57d434c98e,
-0x68e7832b6e0d5d1,
-0x82a78ae738f3639,
0x13b116c528f3fe53f]
private def firstLowerDataRow029 : Array Int := #[0x1b019fcbb1f97c94c,
-0x880d6fefb0c3289d,
-0xa40f2b81e6e4635c,
-0xaeabff4af98020aa,
0xb33902077d4e1647,
-0x190d3263d154f3cb3,
0x2325c77e703e6a37e,
-0xd70e40cfb1a5c3e2,
0x1433e83e148ed922b,
-0x3b7f698c3b33d7f6,
0x1fd23f612e9b8a2,
-0xf48b783027fae58a,
-0xd979379676f1ae74,
-0x1928f5cd6b4ae07a,
0x2207bb5fb44da98fc,
-0x18a58ce5435f41c01]
private def firstLowerDataRow030 : Array Int := #[0x1d2aa9ae6b5df613c,
0x3f8e50bebdf87756,
-0x97f7a508e29f05fa,
-0x8c5af8e641ea4af0,
0x22548fca0b5fb38e8,
-0x13fc80eda8473c34e,
-0xec380c14a311eb89,
0x37f0f8f1e9022db8,
-0xd585421d0280d41b,
0x1ae2c102ad0d5af8,
-0x9368cf657db3dd2b,
-0x1b57d395baf2f5abd,
0xf594d6ad81f12315,
0x55c529e67c25231f,
-0xb6f6af5a0de6ce69,
-0x15f40f93d90bd9718]
private def firstLowerDataRow031 : Array Int := #[-0x32f5270d67e301cc,
-0x24ce253930f455ff8,
0x2e3e70d78f7330896,
-0x307c4382c7dab7dff,
0x968f8b24000eedd4,
-0x65a02c217312aa73,
0x296bc7ca669ecc2f7,
-0x1d2f683ea3e4c0ada,
-0x1b35c3c401dc8318e,
-0xa5b39d4dae183906,
0x56b5cdb138f17e89,
-0x291350fc38e36920,
-0x8c6266010ce7297b,
-0x23904d0fe2f73dd60,
0xf383cfc101c09b9c,
-0x137d383ee31871b4e]
private def firstLowerDataRow032 : Array Int := #[-0x10edc8c8624df6ee2]

def firstLowerData : Array (Array Int) := #[
firstLowerDataRow000, firstLowerDataRow001, firstLowerDataRow002, firstLowerDataRow003, firstLowerDataRow004, firstLowerDataRow005, firstLowerDataRow006, firstLowerDataRow007, firstLowerDataRow008, firstLowerDataRow009, firstLowerDataRow010, firstLowerDataRow011, firstLowerDataRow012, firstLowerDataRow013, firstLowerDataRow014, firstLowerDataRow015, firstLowerDataRow016, firstLowerDataRow017, firstLowerDataRow018, firstLowerDataRow019, firstLowerDataRow020, firstLowerDataRow021, firstLowerDataRow022, firstLowerDataRow023, firstLowerDataRow024, firstLowerDataRow025, firstLowerDataRow026, firstLowerDataRow027, firstLowerDataRow028, firstLowerDataRow029, firstLowerDataRow030, firstLowerDataRow031, firstLowerDataRow032
]

private def firstUpperDataRow000 : Array Int := #[-0x1ff6d568818b3b711,
0x105809f6b0d69e4d7,
-0xa178b30993459f4c,
0x698107c5b6aebde5,
-0x42d5fe679977da6c,
0x2557a1ba36ea39e6,
-0xb57b6216263cede,
-0xc1feea8b1c1c4bf,
0x21efb0facdf5a651,
-0x4076be7d2ad36764,
0x66de75847c34d2a3,
-0xac7d297ffff531d6,
0x212da02ad8d695a9a,
0xd8063236c08e249a,
-0x834cda8014e179c,
0x6fd2b763a4c998db]
private def firstUpperDataRow001 : Array Int := #[0x56cfea7c62961c35,
-0xa87502de64843a6e,
0x219567c4f2a2bb455,
0xbecd0bd42a77a598,
-0x448faf627a5b80ee,
-0x3af1a54340a26c90,
0x6debeb6c0aa48c17,
0x6624c6ebf617172,
0xb47044b01296b99d,
-0x163cf0d5c6f6d7d05,
0x1f1510826d56719e8,
0xfa665f6d77b0f3ed,
0xa3a8e350e40d7109,
-0x1f4c728e89735b772,
-0x859108ed5fa2501c,
0x1aedb50b7abaf755c]
private def firstUpperDataRow002 : Array Int := #[0x68a686450d6280f9,
0x192d2f5c448e2ec8b,
0xe6bfd416f3a54a0,
0x118b76f5c047856e,
0xf7c5b7c6bf96793f,
0x5dee6e06f7872505,
-0x13c3fe363dfc0d5b4,
-0x97bcba9d78e4e614,
0x23ec12e91fae08036,
0x4c1f57c9f96a6691,
-0x18cd385b61f6ebef6,
-0x1793c82fcf313f5b0,
-0x686f3d5040491bc7,
0xd1c3d29b756a5bfd,
0x6cb81f72d86ad374,
-0x1ea4aca63790368c2]
private def firstUpperDataRow003 : Array Int := #[0x15f5ecaa151982363,
-0x1cc5e44a9779e0ea5,
-0x11f5afb9e32c9e390,
-0x649aea09af517005,
-0x10cbca540de310165,
-0x1b11bb3736d0195e,
0x195068ca25116038c,
0x11b5b446652b9e27,
-0x1bbf325a63b3b2a0b,
0x22dfced0a848ccde,
-0x95767bfb4830808f,
-0x1c598996d6fb63340,
0x16825a3ac060d78c,
-0x652f91744f4266e2,
0x26722f96a3b2b98a,
-0x1fb191ef9d39e800f]
private def firstUpperDataRow004 : Array Int := #[-0x10b6a2a97e97c289b,
-0x84f5f4995b4a3d04,
0x19c9f476bdcccff85,
-0x1fd3cf80f4a23adc0,
0x72cc62dc7c0a9df1,
-0x17afdedb112b93254,
0x5f36196bf433a93d,
-0x3657427aa4089ea9,
-0x11125d853b90f69a1,
-0x88ad411eff4512c0,
0x1add405fdf2b10640,
0xe226dac5f224b74b,
0x2225968776c79f335,
-0x192349feccf120101,
0xa4907da74bee0dd5,
-0x8aee4624e1eaa039]
private def firstUpperDataRow005 : Array Int := #[0x2449b2fbd51ec8208,
-0x230c8a1cc4f12cb71,
0x7e28cc2fa119959f,
0x1720a05fb2520e241,
-0x69a276c223c9c47,
0x15f4c827f6c0ba63f,
0x23a90b3b62b5c3ed,
0x25f15d1788f75026,
0x67352d80e7b03791,
0x7185d40cdb53dd99,
0x18937e8ea0f0782a9,
-0xe5866cf7a3251cea,
0xe82aeab7820d2f7f,
-0x6aeceb2b6f33f2af,
0x2af6b3785308840a9,
-0x811eab5b6d496c2b]
private def firstUpperDataRow006 : Array Int := #[0x289ecada9d52bc32c,
-0x17e5faeb20ae7225,
0x2c0b69527d94cf3d1,
-0x19c0a243844d77f82,
0xf16422096985deca,
-0x18a2079d494e724a6,
-0x9fb97f50aa46b62c,
0x8ecc023bf411a99b,
0x2b9bb058c2bf6042b,
-0x1889445c42412290d,
0x1ae02dc731463675,
0x55b25efffc29c2d0,
0x5427ce804e670061,
-0x27f416fc40a268e47,
0x169d5da0379415bb2,
-0x1d7612ddbca9b6458]
private def firstUpperDataRow007 : Array Int := #[0xf6772592f48020d9,
0x66061849fd0a2789,
-0x1eb760c984b181d27,
0x267811a6f2203695,
0x10500d4e26bea661a,
0x14669e74b70262a3,
0x18946a3ade7d43554,
-0x12d7a60abd0645dd0,
-0x1409d20ed187d5643,
-0x1ad511867c105eee9,
-0x77cf5b177acb4124,
-0x2375b3887f36b582b,
0x15a47658b07bdb028,
0x3f4130261aa3936d,
0x3a44c639120a91f8,
-0x1899a45251b9fb424]
private def firstUpperDataRow008 : Array Int := #[0x15e14aeb7e732a43,
-0x1526d4e4b95ec3521,
-0x1ef0716c0273c884,
-0x2f4451f8f0fecac6f,
0x1d7ec8a6c1dadb9b6,
0xdf83df15aa02942,
-0x77e8fbeb8e2fe2c3,
-0xa3ea59eab4b035fe,
-0x1d181522a14eaf94,
0x12f267ed80bfeb041,
0x2116d190e2bac006f,
-0x746a404e8cd448f1,
-0x1861193a1812057d0,
-0x125250104c50cd9d1,
-0x5aa60f874755c6,
0x18c1b877ef2cc98b]
private def firstUpperDataRow009 : Array Int := #[-0x1205d02edaad4b321,
-0xbe5afb6cf4b47991,
0x3023d6c1a8d940ea2,
0xdfabdbc762ffc1b6,
-0xa78b1aa27aeeccd4,
-0x23012fe4ecc1c7f67,
0x12ea0b11a5fcae069,
-0x122bbe8cbfbc893a6,
0x79e6852f92d14518,
0x3447e1ccc26aadcb,
-0x6b9be0657a40531b,
0x16d67453123f626d6,
0x147b3e4037d98ed33,
0x14a3e164bf0262370,
-0xba07909e4f59b755,
0x12693b5dfd7fc9bdf]
private def firstUpperDataRow010 : Array Int := #[0x16b088e465c7d02e0,
-0x1f8a052ae357d4694,
0x886f5d3eaec6ee35,
-0xd93c04a60ca6405e,
-0x1d2701365bfca7ee,
0x151186a83ec67d540,
0xe8e903f329bf1da,
0x11c8596a30aa5b4c5,
0x1675146b0c04b5c23,
0x2d815e9205259c2d,
-0x197ee138aab136c01,
0x10295abc88af2feaa,
-0xed310a28e6540566,
-0x14687f015042690c6,
0x2273e66db8f7126e9,
0xaf643db499e6eb3a]
private def firstUpperDataRow011 : Array Int := #[0x1c8440d7a516b34a5,
0x1000f6420df503494,
0x11aa4de0fa789ced9,
-0x18a84079ed0ae0f68,
0x210429243e90347f2,
-0x1562f4f5212b6e4d8,
0x912f28cd0c96c834,
-0xec0ba04bf47ce7b8,
-0xbd979f13f5f62ac6,
0x1692247a280aaa117,
-0x6623c171e8f09e01,
0x183fc1ba51da839,
0x9757f163fc747863,
0x1604aef7f2da43a98,
-0x886c063fdd6060c6,
-0x16c4122b67e1e5dcc]
private def firstUpperDataRow012 : Array Int := #[-0xc831b70ff3dc56d9,
-0x235a82328213fdb09,
-0x1ae6fbcd64356255,
0x16ea9cb1b725d2380,
0x19e6ad6c078069c01,
0x5553fe841a0f6065,
-0xba186ba3e87ef8a2,
0x5ea2b475d73550d2,
-0x7440a62c48a38120,
-0x239cb3882aba6c8f8,
0x5aa473a53f109799,
-0x2421606dba2d0aead,
0x1dfa98c762c7758c,
-0x2df4cd6a2b0b9a75,
-0x1ec6812df5c4e842,
-0x2ac7ca196528a8914]
private def firstUpperDataRow013 : Array Int := #[0x111ff8a8ba7259827,
0x7973265a78627621,
0x10808706357d58d94,
-0x2fa8faef016662604,
-0x16f89290cae8100ef,
-0x255cfb7089654f876,
0x14d856a633b39f4c8,
-0xefe0673fdf314140,
0x76e692728deaaa39,
0x14761f763f877a638,
0x213fc2f3a69661018,
-0x8d587ab390f411ad,
-0xb969f8fc2ceca62a,
-0x15e2a2cdee89ee6e6,
-0x71443748566407aa,
-0x11b112d198a500ff]
private def firstUpperDataRow014 : Array Int := #[0xf84595e0896dacc4,
-0x1b74f7037e91e3139,
0x965495136dcd0755,
0x1d762b0c059f7ce7c,
0x537bf2840cf6a716,
-0xd54425a99a263c14,
0x2ae0805ac1974049b,
-0x19f4f445c61e79ed7,
0x1c6500a957d212932,
-0x29be74d48a5533522,
0xb3148a61d4c95ecb,
0xdc07916bf813f593,
0x203d9cb8e27503e5d,
0x6af23b38e09a33ee,
0x31b17887f5dd2a3a7,
0x1c9017cc38dcb4fca]
private def firstUpperDataRow015 : Array Int := #[-0x54ab702851b9d519,
0x8ca424f1b45bfe69,
-0x23cb262ac2d89858,
-0x21d3593ded1846190,
0x3015334243ad1c0ea,
-0x117a37b7024a4e62c,
0x974cd732e9f54076,
0xcf257c22e52d0a6e,
0x2d6546083984a4191,
-0x5ecde168dad2d1d2,
-0x72754c98e13ea31c,
-0x12a675049ed46a361,
0x193d122a4569bb975,
-0xa7342dbed6ed8893,
-0xbdd29643375343c6,
-0xd4452b34ccc948d8]
private def firstUpperDataRow016 : Array Int := #[0xd05009a7cbd2aea1,
0x102a0ecabb2c99f7f,
0x2327dd10e9af33471,
-0x10c6fa71601125fb3,
0x13f99c7c49c72e5bc,
-0xf6146572c83080b1,
0xc70e450e7bfc3ba2,
-0x3305f21b783d2c28f,
-0x10b391e56aea67969,
-0x21e57907f32c0cbb8,
0x19a3e8a799a0abbdd,
0x1389f116e8131a6c4,
-0x11da7086da8debe8d,
0xacb9afbc1b8df6fd,
-0x197715dfd07591195,
-0xe34125ed7405a83a]
private def firstUpperDataRow017 : Array Int := #[-0x13b1408d92d865a36,
-0xdc6e20c20c0cd228,
-0x6cabe03de857a686,
-0x19dfde59b8b01fa7f,
0x10a5883f1ed7524e3,
0x306fd81b2bd5d136,
-0x415790f97053107f,
0x1535d22b2bf5b78e,
0x17606365e8d35f96b,
-0x18e734015b371294,
0x80e75e8bcba6cb6,
-0x28a59c15102f90b9d,
-0x151daa0f4bb4bb32e,
-0x176480067f028bd9a,
0xc75f2279576377f3,
0x644cc419472de8d3]
private def firstUpperDataRow018 : Array Int := #[0x1e5a61fe636f3eee8,
-0xa993992608331c44,
0x753cd810067ef7b1,
0x333bf3c60c064f21,
-0x25de0eec50a424654,
-0x154020978f9ebd6f6,
0x22823e23a8d7ada09,
-0xd67997c56f20c296,
-0x369cc4ded4561a0,
0x1ddd4791efe673f17,
-0x33f95d91475875ad,
0x1660401cf2a240753,
0x11ff55521f18bff4e,
0xb8afe25058d270e2,
0x5217e58c5cec9389,
-0x2777107f1abf4698]
private def firstUpperDataRow019 : Array Int := #[-0x1b85006c4c90a48e4,
-0x8af4f226ba5b0fa8,
0x49621310a063e3bc,
0xc1cc801f89eb3b38,
0x1543f9ec70e4bcebf,
0x14ec40c93a2ef0dff,
0x2a159a11444efaf9,
0xed7462953f8bb753,
-0x53e1af7a81c9f31b,
-0x2e259a52ee9c4c7ee,
0x1262e05c52fe92b53,
-0x14b9b1f19816ecb4,
0x282a08896ec3f9df0,
-0x1267232643b794b35,
0xce5ae76f3d19e9a1,
0x254dbefb665b8453c]
private def firstUpperDataRow020 : Array Int := #[0x1a8aaab5675274f33,
0x2534535681876af5,
-0x144c1287b763c4f77,
0x7a18962e593d63da,
0x1a87e1db6eb71763,
-0x122893d332ede4a1,
-0xb6c8fd24715b66e8,
-0x1479bd04b2011f1c0,
0x1c08f032fa8ffde77,
0x1bc5eea09039817d9,
0x1551c689e8ce9d392,
-0x1dc1193cf429fe030,
0x38f3ac7f884badd3,
0x782a3faf280476f,
-0x5b1122fd22ab283a,
-0x272872392f012591e]
private def firstUpperDataRow021 : Array Int := #[0xa653c718dccc6b7c,
0x10c7dbbe114a0df4d,
0x124765cf3d3eed1ba,
0x12a0757e52b668566,
0xa023926191cc3d85,
-0x4fc7540b58975f61,
-0x7c2ddf33210fa3e9,
-0x16026d961967b1c7b,
0xcae0ea66359bf2b8,
-0x2c839e36f24c18e8e,
0x17bc39da3f83144d9,
-0x16b3c3b362c2fb4e6,
-0xb22affcf5380d0f9,
-0x8bc2f1f4512141b,
0x108d24b540f935717,
-0x847d47ebbeb77799]
private def firstUpperDataRow022 : Array Int := #[-0xec01f3b9e2c448f3,
-0x32f6679af65307b2,
-0x18389fb921e152748,
-0x17ef6c1adf53ef8b2,
-0x114090e58cdbe68ac,
-0x1d20e27f0cc8a115c,
0x3b4878dbe947addff,
-0x3b23d33ca5e48178,
0xd378874b73c764ca,
-0x8fa0d5eb4d11b245,
-0x34e784a22cf48e8d,
-0x28bc5314c0a2267ca,
0x15d6581a97f38c597,
-0x2d1277bd6e50e6ffd,
0xefe2fd7c2b570268,
-0x81c46118afa9e155]
private def firstUpperDataRow023 : Array Int := #[0xa45b18e57037debe,
-0x1135b65c998a0c73e,
0x82f973daeebd8419,
-0x9d8b3244ac66997a,
0x207062e8e6e90602e,
-0x33c6e72dbab43c95,
-0x11e1883e8105d0cdc,
-0xf58c10a408390e97,
0x4e244a6b0fad2627,
-0x1040a703c3a92315e,
0x29908dc113cc510d1,
0x1d87330f3d157af9a,
0xeaed6444aeef0e72,
0x127dbfe4985175883,
0x17ae6deafe17e995d,
-0x52e760524baf066c]
private def firstUpperDataRow024 : Array Int := #[-0xfea298a3c94907c8,
-0xf08cc64b31bd2cb8,
0x2b5a0d846ff3c9727,
-0x32712e9a855bf011,
0x1c35703ff2565b636,
-0x9433a2d9ae25c62a,
0x9a4221d5ea554888,
0x11790b9a0c4f15bc7,
0x21d28f4b9e02aaab8,
-0xa1ec28470d1bfced,
-0xbf8b5cfd2eca70f,
-0x11840bfc8d5928efa,
0x282470a222fa71b35,
-0x130b8ef2e537e34a7,
0xd96cabfde3034425,
-0x3a01123735cfa868]
private def firstUpperDataRow025 : Array Int := #[0x3d9c75966eb5a0946,
0x6a46df556fbdd1c0,
0x5553e2330f3bd087,
-0x29b541d1450c3e72,
-0x146d8ee14c7baa8ad,
0x4136a106afc30586,
-0x124ce80ebc4a5ce72,
-0x677e03420369970c,
0x6f37a0e3e384aab4,
0x207a854bcbbc84b8,
-0x67d9327d2759557,
0x1348a7481cc566b6,
-0xe9aa43222d18a402,
-0xca87a78792744e76,
0x541f3fdbceb9377d,
-0x2f4ae91f8e8224d94]
private def firstUpperDataRow026 : Array Int := #[0x89763dc51e18778e,
-0x31a1d0c9abf7cd12,
-0xf49abe5c123070a,
-0x118f76ed57ca7fa88,
-0x2cf914a7c6a1d7de,
0x1286795e3d4ae1706,
0xd284f671bddf1fd6,
-0xcb786fcd4738e941,
-0x242282c1c7e4f26bf,
0x8a4c2f6ece8f6515,
-0xdcd7c1650e7f8ac1,
-0x2f3aaacb1a5513cf4,
0x1218b6d6ae23cbffb,
-0x15915581c52d0024b,
0x156ac691267da832a,
0x168ac20b0ff20ecdd]
private def firstUpperDataRow027 : Array Int := #[-0x1929265693ca2ad0d,
-0x21a0e17f5fd7e2c1f,
-0x1d49d3bce74be2e2,
0x11c706a6e6c7a552c,
-0x1864c89ec810a168a,
-0x12920fb50a0e7a6b,
0xacd94eea0ee9f927,
0x1015a14dfc581b3cb,
0xaf9de9fbd91acbf8,
-0xe7713bacccbe0716,
0xe9b6acf1a6616023,
0x1267c618ec63755c2,
0x1551264049f8b045d,
-0xb9fca18695c10bf9,
-0x571fffab55d7aa10,
-0x1e69c17d0b0381757]
private def firstUpperDataRow028 : Array Int := #[0xd2ae955fa4b1ae13,
0xdc2ab7aeb84d0b69,
0x13a2d1144c2695f60,
0x45b35ebf6902a57c,
0x9b76eb8f6fb456a7,
0xd43d354f1ce8ecab,
-0x19125ff6586ed9dac,
0x46032361ba8528dc,
0x1f557c110616e42b,
0x361e54c4be38871a,
0x191257dc34bd82c95,
0x11d3d59f6a40927bd,
0x883b9c74a66482b6,
0x165355ea2b4ff936,
0x14c7566e7ea2ae32,
0x158133c6f9172e115]
private def firstUpperDataRow029 : Array Int := #[0x1cd2bcdd831cbdadb,
-0x6aeb9dd28e8e0152,
-0x86dd5864b4ae23ff,
-0x916a2b2db748ccb5,
0xd08ad724cf868473,
-0x17371501fb315b9de,
0x24fce4f0476213d48,
-0xb98c68b22f6a14a0,
0x160d05cfedb2a561f,
-0x1ddd8f6e98f5fae8,
0x1faeff13c528ac78,
-0xd6c99c1265badbaf,
-0xbba75a78a4b08fb6,
0x4b8e85076f757b2,
0x23e6d9519371de4fa,
-0x16c56ee3633afb7e4]
private def firstUpperDataRow030 : Array Int := #[0x1f0bc7c04c824db86,
0x5db032dce03f07ea,
-0x79c5c1eab0575fdb,
-0x6e1914c7ffa18c45,
0x2439ae1bf08450e04,
-0x1216628bc2228d5de,
-0xcdc624f630c5e962,
0x5672e1106b4f4637,
-0xb6f358fe7032a484,
0x3984ab214f5ca142,
-0x74b6e446cb637eaa,
-0x196bb4d3cecdde667,
0x11466c3cc5443ae0d,
0x74a718055e78c495,
-0x9804c03b1b921702,
-0x1403f091e8e67c76f]
private def firstUpperDataRow031 : Array Int := #[-0x13e335ee558c18dd,
-0x22dc06173eced6193,
0x303190098298c1c2a,
-0x2e882440d3b515129,
0xb5e18043526a30eb,
-0x463e360210b65396,
0x2b62e73c5dc4a31a3,
-0x1b3748bcabbed8452,
-0x193ca43208b689377,
-0x8611a32e0bb784f9,
0x7667c8d0eb534cca,
-0x95154dc768087c4,
-0x6c9068e13a832d98,
-0x21922d2de4d0ec954,
0x11375cee0f426c760,
-0x117d183ce2f1fdc06]
private def firstUpperDataRow032 : Array Int := #[-0x10edc8c857c4a86d2]

def firstUpperData : Array (Array Int) := #[
firstUpperDataRow000, firstUpperDataRow001, firstUpperDataRow002, firstUpperDataRow003, firstUpperDataRow004, firstUpperDataRow005, firstUpperDataRow006, firstUpperDataRow007, firstUpperDataRow008, firstUpperDataRow009, firstUpperDataRow010, firstUpperDataRow011, firstUpperDataRow012, firstUpperDataRow013, firstUpperDataRow014, firstUpperDataRow015, firstUpperDataRow016, firstUpperDataRow017, firstUpperDataRow018, firstUpperDataRow019, firstUpperDataRow020, firstUpperDataRow021, firstUpperDataRow022, firstUpperDataRow023, firstUpperDataRow024, firstUpperDataRow025, firstUpperDataRow026, firstUpperDataRow027, firstUpperDataRow028, firstUpperDataRow029, firstUpperDataRow030, firstUpperDataRow031, firstUpperDataRow032
]

private def weightCentreDataRow000 : Array Int := #[0x15e5e6fa894191b184,
0x5741af18cbcfce1a10,
0xc4254b66a4db11df37,
0x15c8e0f9d97b1c50c0f,
0x2207ae52fe883c6bd99,
0x30feb3797855f4af559,
0x42ade8e829ed28a03c9,
0x571547af4563a9c8739,
0x6e34c91ddc5b679b12f,
0x880c66a191f982da221,
0xa49c19b876a3a507edc,
0xc3e3dbea212ad1525de,
0xe5e3a6c407d4303799d,
0x10a9b73d7717a5ec0b2f,
0x1320b3cb83d620f386af,
0x15c32fafc229a8e55363]
private def weightCentreDataRow001 : Array Int := #[0x18912a83a35246dd0008,
0x1b8aa3e0a957910599f3,
0x1eaf9b6063ab461339ca,
0x2200109c6cdfc8f1d441,
0x257c032e6915e9da9e3a,
0x292372b004e74fbf7f01,
0x2cf65ebaf4a75f5e08cc,
0x30f4c6e8f3e144b361ea,
0x351eaad3c501ec321569,
0x39740a153122098163fc,
0x3df4e44707e7d3b64bad,
0x42a139031f7a825af1ee,
0x477907e354833e718b68,
0x4c7c50818a385da6b6e8,
0x51ab1277aa7095db1215,
0x57054d5fa5bc63888d1b]
private def weightCentreDataRow002 : Array Int := #[0x5c8b00d37384540a87bd,
0x623c2c6d122b2d704c3d,
0x6818cfc687332daa50e3,
0x6e20ea79df65c44925ac,
0x74547c212efd4eb8ffea,
0x7ab3845691d0739808ec,
0x813e02b42b7ed5574d7b,
0x87f3f6d4279edab233ef,
0x8ed56050b9ec5d78b2f2,
0x95e23ec41e7818f162fa,
0x9d1a91c899d7b51da669,
0xa47e58f8795654fe0472,
0xac0d93ee13259420d758,
0xb3c84243c68edc42db95,
0xbbae6393fc250bada226,
0xc3bff77925f65506d765]
private def weightCentreDataRow003 : Array Int := #[0xcbfcfd8dbfbe5b60558d,
0xd465756c4f18735875a7,
0xdcf95eaf63b20e9bd6a5,
0xe5b8b8f1977d422b6e53,
0xeea383cd8ee365ac4d06,
0xf7b9beddf8f7c887ed43,
0x100fb69bd8faa76b7ef87,
0x10a68840717fb069c4799,
0x114010d55622b75f60fa0,
0x11dc5054349f30911a592,
0x127b46b6bb6b132d8918d,
0x131cf3f699ba077e3243e,
0x13c1580d7f8095fe74b2f,
0x146872f51d77554961c36,
0x151244a7251e18ec9ba9a,
0x15becd1d48bf1f5b4ef76]
private def weightCentreDataRow004 : Array Int := #[0x166e0c513b723fff5582c,
0x1720023cb120187b4f940,
0x17d4aed95e853a1d44f18,
0x188c1220f935565babacb,
0x19462c0d379e6b2f3e21c,
0x1a02fc97d10bee8de5107,
0x1ac283ba7da9f9cadb317,
0x1b84c16ef688737792b33,
0x1c49b5aef59e39e9fe3a7,
0x1d11607435cc4be78bb53,
0x1ddbc1b872e0f12996744,
0x1ea8d975699ae1ebff939,
0x1f78a7a4d7ac6e4fad54e,
0x204b2c407bbea3e4ca092,
0x21206742157473590d7cb,
0x21f858a3656dd510106e2]
private def weightCentreDataRow005 : Array Int := #[0x22d3005e2d4aec2513887,
0x23b05e6c2faf2a5f8d8a5,
0x249072c7304470aaf9c99,
0x25733d68f3be313d33537,
0x2658be4b3fdc8f3115c6f,
0x2740f567db6f7d64a78ef,
0x282be2b88e59dd01b395d,
0x2919863721949ad1a8295,
0x2a09dfdd5f31cad8c28f0,
0x2afcefa5125fc4425bf02,
0x2bf2b588076c3aebfaff6,
0x2ceb31800bc759029242c,
0x2de66386ee06d6b33d2de,
0x2ee44b967de9121bb304c,
0x2fe4e9a88c5823c7a06f3,
0x30e83db6eb6cf52f0bd87]
private def weightCentreDataRow006 : Array Int := #[0x31ee47bb6e7253762abdc,
0x32f707afe9e80224f92c1,
0x34027d8e3385cd9e9b141,
0x3510a950223e9a7e6bcb5,
0x36218aef8e43757253bc6,
0x373522665106a187aeac4,
0x384b6fae453ea423fc1a1,
0x396472c146e951eb29ca9,
0x3a802b99334ed929a1e4b,
0x3b9e9a2fe904ca48f81cc,
0x3cbfbe7f47f120f15bc9d,
0x3de39881314d4a8a106b5,
0x3f0a282f87a92b7fef952,
0x40336d842eee2535960d7,
0x415f68790c62172c8d09e,
0x428e190806aa6218dd193]
private def weightCentreDataRow007 : Array Int := #[0x43bf7f2b05cee84af11fa,
0x44f39adbf33d0cdd4de01,
0x462a6c14b9cab1d7cca77,
0x4763f2cf45b934b83cdcc,
0x48a02f0584b86a79dd374,
0x49df20b165e997ef0de5a,
0x4b20c7ccd9e26c5ec6a9d,
0x4c652451d2aff71818990,
0x4dac363a43d99f0f7b481,
0x4ef5fd80226416ade61a7,
0x50427a1d64d44e592e54d,
0x5191ac0c033267113931a,
0x52e39345f70ca28ea358b,
0x54382fc53b7a51a7a4d35,
0x558f8183cd1ec3af98000,
0x56e9887baa2c2fc42558e]
private def weightCentreDataRow008 : Array Int := #[0x584644a6d266a1136ab2a,
0x59a5b5ff4726e037e7987,
0x5b07dc7f0b5d5b1daef1d,
0x5c6cb82023950891c702e,
0x5dd448dc95f650f6b0655,
0x5f3e8eae6a49edb231968,
0x60ab898fa9fbcefa04f3e,
0x621b397a601df7d079b2c,
0x638d9e68996b5f0571239,
0x6502b854644acbce2f295,
0x667a8737d0d1b24cc875f,
0x67f50b0cf0c70c9d4e477,
0x697243cdd7a6307facdf9,
0x6af231749aa1af7f9bd7f,
0x6c74d3fb50a61eedaf423,
0x6dfa2b5c125cf6a182da1]
private def weightCentreDataRow009 : Array Int := #[0x6f823790fa2f5db372e49,
0x710cf8942448fde630114,
0x729a6e5fae9acd8daad16,
0x742a98edb8dde476239fd,
0x75bd783864963f9643959,
0x77530c39d51590867806f,
0x78eb54ec2f7e0388824d0,
0x7a8652499ac5063d075df,
0x7c24044c3fb60d8a1523d,
0x7dc46aee48f557b7ecfe7,
0x7f678629e302af43c5bc4,
0x810d55f93c3c293b48d9e,
0x82b5da5684e0e5035d4a9,
0x8461133bef13c7f7ff316,
0x860f00a3aede393217f39,
0x87bfa287fa32d7ab0e16c]
private def weightCentreDataRow010 : Array Int := #[0x8972f8e308f035a16fcd5,
0x8b2903af14e38aae7ce3a,
0x8ce1c2e659cb697b96d8d,
0x8e9d3683155a7155e717a,
0x905b5e7f8739fd4621f13,
0x921c3ad5f10cd6704182c,
0x93dfcb809671da42a280d,
0x95a61079bd06aa342ad86,
0x976f09bbac6a550d847b0,
0x993ab740ae3ffa9cfe6c9,
0x9b0919030e31755d3a969,
0x9cda2efd19f1f7184befc,
0x9eadf9292140b655e58ee,
0xa084778175eb8280269ec,
0xa25daa006bd1690a2e1c3,
0xa43990a058e54dd9141ef]
private def weightCentreDataRow011 : Array Int := #[0xa6182b5b953088ec2f92b,
0xa7f97a2c7ad57d1e1cf7a,
0xa9dd7d0d66122ce81ce9f,
0xabc433f8b542d08d6b9e5,
0xadad9ee8c8e46e8671212,
0xaf99bdd8039762bcf5a70,
0xb18890c0ca21ef6e77a42,
0xb37a179d8372d2da27035,
0xb56e526898a3cadbd51c6,
0xb765411c74fc1be73eba8,
0xb95ee3b385f3208f8695a,
0xbb5b3a283b32c8db8ed0d,
0xbd5a4475069a1c44c5180,
0xbf5c02945c3fc41c39f9f,
0xc1607480b2747ec39d522,
0xc3679a3481c5a514a3dce]
private def weightCentreDataRow012 : Array Int := #[0xc57173aa44ffa914cb47d,
0xc77e00dc793082487cf6d,
0xc98d41c59daa34fd5b286,
0xcb9f366034053b7af7054,
0xcdb3dea6c022ffafe4863,
0xcfcb3a93c8304c7f5cc08,
0xd1e54a21d4a7ba2c69a66,
0xd4020d4b7054205592f94,
0xd621840b2852fae2a7ea5,
0xd843ae5b8c16de07dbcaa,
0xda688c372d69d15abe0bb,
0xdc901d98a06fbabf6d8d0,
0xdeba627a7ba8c35619e93,
0xe0e75ad757f3b9ec000c2,
0xe31706a9d09069057b0b8,
0xe54965ec8321ff949ffaf]
private def weightCentreDataRow013 : Array Int := #[0xe77e789a0fb165750c795,
0xe9b63ead18af90d206531,
0xebf0b82042f7e76201974,
0xee2de4ee35d28d6aa003b,
0xf06dc5119af6b18b990fc,
0xf2b058851e8ce79ea76d5,
0xf4f59f436f3179efd4f11,
0xf73d99473df6a162e9adc,
0xf988468b3e66eb4e273ca,
0xfbd5a70a2687695f1e6b0,
0xfe25babeaeda04d0cbf03,
0x1007881a3925fc0ed6926e,
0x102cdfbb38e9af4a53af33,
0x1052628e9639198d81322a,
0x10781093fd3cf7660048eb,
0x109de9cb1a46867ef61131]
private def weightCentreDataRow014 : Array Int := #[0x10c3ee3399cfa968b394c7,
0x10ea1dcd287b0a4ec6ccda,
0x1110789773143f7ed341de,
0x1136fe92268fed1520982b,
0x115dafbcf00be9237a3139,
0x11848c177ccf5de86f6831,
0x11ab93a17a4aecfb33df7a,
0x11d2c65a9618d1da68c6e4,
0x11fa24427dfd03d4fe8600,
0x1221ad58dfe5590cadf31a,
0x1249619d69e9a885ab1958,
0x1271410fca4bebf3346871,
0x12994bafaf7861fece4352,
0x12c1817cc805af6fc77001,
0x12e9e276c2b5013def3755,
0x13126e9d4e722ec29d51f0]
private def weightCentreDataRow015 : Array Int := #[0x133b25f01a53d963f5d67c,
0x1364086ed59b8f7bed24ed,
0x138d16192fb5ec3c7b04eb,
0x13b64eeed83ab93040e12f,
0x13dfb2ef7eed0f5a0d5830,
0x1409421ad3bb76ce5b8a7c,
0x1432fc7086c008738eeb4d,
0x145ce1f048408d5b9f0ff4,
0x1486f299c8ae9f6e742db6,
0x14b12e6cb8a7c9ecba7954,
0x14db9568c8f5a88debc26c,
0x1506278daa8e07b75485d9,
0x1530e4db0e930467548189,
0x155bcd50a6532b91bb8b71,
0x1586e0ee234998ab95a9eb,
0x15b21fb3371e16b873a9e9]
private def weightCentreDataRow016 : Array Int := #[0x15dd899f93a53d63ceb1ad,
0x16091eb2eae0919ce8a769,
0x1634deeceefea2c0945734,
0x1660ca4d525b2b25639f43,
0x168ce0d3c77f2d08ea6aa8,
0x16b92280012111f8574f18,
0x16e58f51b224c7d8aea47a,
0x171227488d9be064435feb,
0x173eea6446c5aea585effe,
0x176bd8a4910f644a33f543,
0x1798f20920142f0b83ade2,
0x17c63691a79d580c69a52f,
0x17f3a63ddba25e85922433,
0x1821410d704916f7062b1b,
0x184f070019e5c7ff16e916,
0x187cf8158cfb4620216ed9]
private def weightCentreDataRow017 : Array Int := #[0x18ab144d7e3b11b52efe29,
0x18d95ba7a285734f5f16c1,
0x1907ce23aee997ab4f7f6a,
0x19366bc158a5ac93e56cc9,
0x196534805526fd40a80540,
0x199428605a0a0d6c708a9f,
0x19c347611d1ab61f87e504,
0x19f2918254544144cd0175,
0x1a2206c3b5e1852ed619d2,
0x1a51a724f81cffc6bd1f82,
0x1a8172a5d190f289429ec0,
0x1ab16945f8f77ca3e8abfd,
0x1ae18b05253ab72f7010f3,
0x1b11d7e30d74cf45760518,
0x1b424fdf68f020fe5385c7,
0x1b72f2f9ef275187d3c5c7]
private def weightCentreDataRow018 : Array Int := #[0x1ba3c13257c56a646b89a4,
0x1bd4ba885aa5f39e686353,
0x1c05defbafd50c9ca1f5be,
0x1c372e8c0f8f87d273d1a4,
0x1c68a939324303f220084a,
0x1c9a4f02d08e05241ef7ea,
0x1ccc1fe8a3400f2bfebb4f,
0x1cfe1bea6359bdaddd6073,
0x1d304307ca0cdffe2a45a4,
0x1d62954090bc8f617f95ea,
0x1d95129470fd4927a0cec8,
0x1dc7bb03249507d4c40023,
0x1dfa8e8c657b5af05194d1,
0x1e2d8d2fedd98150676792,
0x1e60b6ed780a7e2fdf98d6,
0x1e940bc4be9b3456c930a0]
private def weightCentreDataRow019 : Array Int := #[0x1ec78bb57c4a7de3d53fc7,
0x1efb36bf6c0941c65e150b,
0x1f2f0ce248fa8e4ac2bcdb,
0x1f630e1dce73af67365621,
0x1f973a71b7fc4679157330,
0x1fcb91ddc14e60cadaab8c,
0x20001461a65690daadc207,
0x2034c1fd233402509040b3,
0x20699aaff438937b6973a9,
0x209e9e79d5e8eacbb1abdd,
0x20d3cd5a84fc8db9358c58,
0x21092751be5df65128ec57,
0x213eac5f3f2aab833aa91c,
0x21745c82c4b3559ba01996,
0x21aa37bc0c7bd3d0043e36,
0x21e03e0ad43b53094eca37]
private def weightCentreDataRow020 : Array Int := #[0x22166f6ed9dc64499e38c9,
0x224ccbe7db7d10f7150524,
0x22835375976eef8332d5ff,
0x22ba0617cc373ae5033a4d,
0x22f0e3ce388ee610d578ee,
0x2327ec989b62b0d8b2892a,
0x235f2076b3d33e14685fd5,
0x23967f68413526600b17b6,
0x23ce096d03110e1d3d9bd8,
0x2405be84b923b90974c719,
0x243d9eaf235e1e73f14a61,
0x2475a9ec01e57e00915853,
0x24ade03b15137207508d45,
0x24e6419c1d76046a2f4b79,
0x251ece0edbcfc30fdd438d,
0x255785931117d14f7a07dd]
private def weightCentreDataRow021 : Array Int := #[0x259068287e79fc13df1b08,
0x25c975cee556cdb308a869,
0x2602ae860743a04a03ad07,
0x263c124da60ab064cbb727,
0x2675a12583ab2f7f862ce1,
0x26af5b0d625957ea76d115,
0x26e94005047e7debe1f164,
0x2723500c2cb9220866e0b5,
0x275d8b229ddd0476aeff61,
0x2797f1481af334bbe0672e,
0x27d2827c673a25ed40f72e,
0x280d3ebf4625be86d10bba,
0x284826107b5f6bb178f590,
0x2883386fcac630778adf06,
0x28be75dcf86eb89d543a48,
0x28f9de57c8a36999919776]
private def weightCentreDataRow022 : Array Int := #[0x293571dfffe472d871f39c,
0x2971307562e7dee26232fa,
0x29ad1a17b699a404ba8e1f,
0x29e92ec6c01bb39122427e,
0x2a256e8244c60e1d455328,
0x2a61d94a0a26ce02ca4a84,
0x2a9e6f1dd6023ca358ae31,
0x2adb2ffd6e52de165ee753,
0x2b181be89949848569bec0,
0x2b5532df1d4d5d7a94c947,
0x2b9274e0c0fc0254246ea1,
0x2bcfe1ed4b2986e1b5214e,
0x2c0d7a0482e0892a61ba78,
0x2c4b3d262f623ffe988f99,
0x2c892b5218268b30b12b6e,
0x2cc7448804dbff3c08c4c3]
private def weightCentreDataRow023 : Array Int := #[0x2d0588c7bd67f8455634b9,
0x2d43f81109e6a4c6d27096,
0x2d829263b2ab15a648677c,
0x2dc157bf803f4bcf62d0e4,
0x2e0048243b6446cbc6d6eb,
0x2e3f6391ad1210f9bbece3,
0x2e7eaa079e77d107b1e103,
0x2ebe1b85d8fbd2da4daf57,
0x2efdb80c263b972030760a,
0x2f3d7f9a500be389d5c8c8,
0x2f7d72302078c9bb868c1e,
0x2fbd8fcd61c5b88ed9e135,
0x2ffdd871de6d8a0a84bb73,
0x303e4c1d61228c5243f3d8,
0x307eeacfb4ce8f65618159,
0x30bfb488a492f4730cab58]
private def weightCentreDataRow024 : Array Int := #[0x3100a947fbc8b5ff7e2ef7,
0x3141c90d860077d925ccdf,
0x318313d90f028f3405a265,
0x31c489aa62cf11e2473404,
0x32062a814d9de00a4e1a04,
0x3247f65d9bdeb1b12b877f,
0x3289ed3f1a392046844399,
0x32cc0f25958cb20cf09311,
0x330e5c10daf0e5d23d26f1,
0x3350d400b7b53f77723067,
0x339376f4f96150d8b4431c,
0x33d644ed6db4c367340c8a,
0x34193de9e2a76796703621,
0x345c61ea266938a8645cb1,
0x349fb0ee07626e2482299d,
0x34e32af554337e3111f317]
private def weightCentreDataRow025 : Array Int := #[0x3526cfffdbb5303c128dc1,
0x356aa00d6cf8a0eca18051,
0x35ae9b1dd7474b7b4ca80d,
0x35f2c130ea23188642df5e,
0x36371246754662532bd6bf,
0x367b8e5e48a40263f28690,
0x36c0357834675563ae4bb4,
0x3705079408f44a1f5d7b1c,
0x374a04b196e76774b552d9,
0x378f2cd0af15d4f7b33cb0,
0x37d47ff1228d626645e711,
0x3819fe12c294958a08e871,
0x385fa73560aaace6377b33,
0x38a57b58ce87aa553c8863,
0x38eb7a7cde1c599a6a38c3,
0x3931a4a161925cea2082f7]
private def weightCentreDataRow026 : Array Int := #[0x3977f9c62b4c2dfb425861,
0x39be79eb0de52c51578352,
0x3a05250fdc31a1bc111458,
0x3a4bfb34693ec6b035f6f5,
0x3a92fc588852d0693a8b00,
0x3ada287c0cecf2c36a850b,
0x3b217f9ecac568aaa92d9d,
0x3b6901c095cd7f2ab79b14,
0x3bb0aee1422f921411ee0c,
0x3bf88700a44f2045846a32,
0x3c408a1e90c8c3fde05813,
0x3c88b83adc7245c884209f,
0x3cd111555c5a9b86996ce9,
0x3d19956de5c9ee60ade7fd,
0x3d6244844e41a66beef9cd,
0x3dab1e986b7c68ace3bb0c]
private def weightCentreDataRow027 : Array Int := #[0x3df423aa136e236b2f8fb0,
0x3e3d53b91c44107014ee26,
0x3e86aec55c64bdf52be387,
0x3ed034ceaa700dd854def2,
0x3f19e5d4dd3f3fc4617d02,
0x3f63c1d7cbe4f68ef0388b,
0x3fadc8d74dad384a7cfd0f,
0x3ff7fad33a1d79fe437409,
0x404257cb68f49e13ed1b5b,
0x408cdfbfb22afc596f085e,
0x40d792afedf266f42e746d,
0x4122709bf4b62c7282fe17,
0x416d79839f1b1ca994c480,
0x41b8ad66c5ff8d48c752e4,
0x42040c45427b5cef3c482e,
0x424f961eeddffaee63c7c0]
private def weightCentreDataRow028 : Array Int := #[0x429b4af3a1b8633a6711b3,
0x42e72ac337c92a0a374930,
0x4333358d8a10792b692536,
0x437f6b5272c61a05892990,
0x43cbcc11cc5b6cf9a9d911,
0x441857cb717b7bb969107e,
0x44650e7f3d0af13b4f4332,
0x44b1f02d0a281f57dae710,
0x44fefcd4b42b0452d6fa66,
0x454c347616a54a0b508646,
0x459997110d6247c89af5a2,
0x45e724a5746709ec763726,
0x4634dd3327f24f48fd666d,
0x4682c0ba047c883bc5bdc2,
0x46d0cf39e6b7e4890a0415,
0x471f08b2ab90464c490acd]
private def weightCentreDataRow029 : Array Int := #[0x476d6d24302b51acd0e14a,
0x47bbfc8e51e860b2d3eda3,
0x480ab6f0ee60903d50846a,
0x48599c4be366bd1f380a1e,
0x48a8ac9f0f078332c0097d,
0x48f7e7ea4f89414f066b32,
0x49474e2d836c1a1f285730,
0x4996df688969f30d7d73d4,
0x49e69b9b407675f33b2a61,
0x4a3682c587bf138820c392,
0x4a8694e73eab0231b21cba,
0x4ad6d20044db3ce86f9702,
0x4b273a107a2a881bfe86b5,
0x4b77cd17bead6d2952d745,
0x4bc88b15f2b23c872dfaa3,
0x4c19740af6c10cff4a3e80]
private def weightCentreDataRow030 : Array Int := #[0x4c6a87f6ab9bbe07dd30c7,
0x4cbbc6d8f23df3acae1502,
0x4d0d30b1abdd17a0132939,
0x4d5ec580b9e85acf276a30,
0x4db08545fe08b18e79186d,
0x4e0270015a20d522b2a691,
0x4e5485b2b04d4165b6edb0,
0x4ea6c659e2e435413b696e,
0x4ef931f6d475af64884655,
0x4f4bc88967cb6f478e280b,
0x4f9e8a117fe8f54cd991cf,
0x4ff1768f000b7c2b52de3a,
0x50448e01cba9fb0f2eeac1,
0x5097d069c67522def01442,
0x50eb3dc6d4576006766c66,
0x513ed618d974cf28bbdb9b]
private def weightCentreDataRow031 : Array Int := #[0x5192995fba2b4967634249,
0x51e6879b5b1252daca761e,
0x523aa0cba0fb263dbdce84,
0x528ee4f070f0a7ddbce419,
0x52e35409b0376af1ca1c8d,
0x5337ee17444da7eec0225e,
0x538cb31912eb41cf5db5e0,
0x53e1a30f0201bc1166428e,
0x5436bdf8f7bc3e42c69fdf,
0x548c03d6da7f8b68ae6282,
0x54e174a890e9ffc2d26902,
0x5537106e01d39820bfde31,
0x558cd727144ddabc915c0b,
0x55e2c8d3afa3e73f712d36,
0x5638e573bb5a65fca3ec88,
0x568f2d071f2f8abf38fecc]

def weightCentreData : Array (Array Int) := #[
weightCentreDataRow000, weightCentreDataRow001, weightCentreDataRow002, weightCentreDataRow003, weightCentreDataRow004, weightCentreDataRow005, weightCentreDataRow006, weightCentreDataRow007, weightCentreDataRow008, weightCentreDataRow009, weightCentreDataRow010, weightCentreDataRow011, weightCentreDataRow012, weightCentreDataRow013, weightCentreDataRow014, weightCentreDataRow015, weightCentreDataRow016, weightCentreDataRow017, weightCentreDataRow018, weightCentreDataRow019, weightCentreDataRow020, weightCentreDataRow021, weightCentreDataRow022, weightCentreDataRow023, weightCentreDataRow024, weightCentreDataRow025, weightCentreDataRow026, weightCentreDataRow027, weightCentreDataRow028, weightCentreDataRow029, weightCentreDataRow030, weightCentreDataRow031
]

private def weightRadiusDataRow000 : Array Int := #[0x1111d9790f37c6,
0x888ecb7d02a06c,
0x1cce1ee9284640f,
0x444765b42cea513,
0x855b72a16e8b1e1,
0xe670f7397cf476b,
0x16deea504e7bdf3f,
0x2223b2d8c3e6b8cb,
0x309bd425810770f9,
0x42adb94f0ed56515,
0x58bfcd6df647d0da,
0x73387b9ac055d4a6,
0x927e2eedf5f65fa7,
0xb6f7528020208161,
0xe10a5169c7cb5175,
0x1111d96c375ed8545]
private def weightRadiusDataRow001 : Array Int := #[0x147978da5b37e786c,
0x184dea1290974d58d,
0x1c9593c6600c76170,
0x2156dca75226db8a5,
0x26982b66ef75de24a,
0x2c5fe6b6c088f52e1,
0x32b475484def8fd80,
0x399c3dcd203916894,
0x411da6f6bff504671,
0x493f1776b5b2bb49e,
0x5206f5fe8a01b4435,
0x5b7ba93fc5714d250,
0x65a397ebf0910f32c,
0x708528b493f04fdaa,
0x7c26c24b381e8b5ad,
0x888ecb6165ab29fed]
private def weightRadiusDataRow002 : Array Int := #[0x95c3aaa8a525b2959,
0xa3cbc6d27f1d61be5,
0xb2ad86907c21c5fbf,
0xc26f509424c25d006,
0xd3178b8f018e78e2c,
0xe4ac9e329b1594b28,
0xf734ef3079e718cf3,
0x10ab6e53a26927cf19,
0x11f38e70129a71e092,
0x134c15b370bb4a8c3c,
0x14b56a88d554a28fd7,
0x162ff35b58ef76c21a,
0x17bc16961414b80670,
0x195a3aa41f4d643683,
0x1b0ac5f093226b8684,
0x1cce1ee6881cc75e25]
private def weightRadiusDataRow003 : Array Int := #[0x1ea4abf116c56f04db,
0x208ed37b57a55b7d5b,
0x228cfbf06345821b81,
0x249f8bbb522ed864f7,
0x26c6e9473cea5985d0,
0x29037aff3c00f16011,
0x2b55a74e67fba675a3,
0x2dbdd49fd96368fb7f,
0x303c695ea8c1249010,
0x32d1cbf5ee9ddf5d1a,
0x357e62d0c3828c513d,
0x3842945a3ff821f63e,
0x3b1ec6fd7c87981311,
0x3e13612591b9e07a12,
0x4120c93d9817f60b52,
0x444765b0a82ad6bc34]
private def weightRadiusDataRow004 : Array Int := #[0x47879ce9da7b651a16,
0x4ae1d5544792acb46c,
0x4e56755b07f99922a8,
0x51e5e36934392bb6c1,
0x559085e9e4da50b578,
0x5956c3483266073665,
0x5d3901ef35653139b1,
0x6137a84a0660e87519,
0x65531cc3bde2126eb3,
0x698bc5c7747196d59f,
0x6de209c0429889ae04,
0x72564f1940dfc99365,
0x76e8fc3d87d0551324,
0x7b9a77982ff332b4f0,
0x806b279451d1324111,
0x855b729d05f3805028]
private def weightRadiusDataRow005 : Array Int := #[0x8a6bbf1d64e2e08a47,
0x8f9c738087286763e3,
0x94edf631854d11273d,
0x9a60ad9b77d9c6af99,
0x9ff50029775777dbcf,
0xa5ab54469c4f31d34f,
0xab84105dff49cea047,
0xb17f9adab8d065f38d,
0xb79e5a27e16bce9e2a,
0xbde0b4b091a509acee,
0xc44710dfe20525491c,
0xcad1d520eb14f2befe,
0xd18167dec55d993fae,
0xd8562f848967e73a86,
0xdf50927d4fbcceef05,
0xe670f73430e56cc0fb]
private def weightRadiusDataRow006 : Array Int := #[0xedb7c414456a97224c,
0xf5255f88a5d54db7ef,
0xfcba2ffc6aae810561,
0x104769bdaac7f30927d,
0x10c5b098e83d07e1214,
0x11467df83092b16fc70,
0x11c9d842355181bcbdd,
0x124fc5dda8020561eb5,
0x12d84d313a2cd0daf3f,
0x136374a39d5a6e4e976,
0x13f1429b83137274c2b,
0x1481bd7f9ce0685c2f3,
0x1514ebb69c49de7ee4a,
0x15aad3a732d869fd4cb,
0x16437bb81214957563c,
0x16deea4feb86f219419]
private def weightRadiusDataRow007 : Array Int := #[0x177d25d570b80fd115e,
0x181e34af53307d0aba9,
0x18c21d444478c99eb47,
0x1968e5faf619856c320,
0x1a12953a199b3eb81bc,
0x1abf3168608683a31f8,
0x1b6ec0ec7c63e9033ab,
0x1c214a2d1ebbf9ad62e,
0x1cd6d390f917472c159,
0x1d8f637ebcfe5bd9aff,
0x1e4b005d1bf9ceca3cd,
0x1f09b092c7922c30882,
0x1fcb7a86715001e2d1f,
0x2090649ecabbdf948b5,
0x21587542855e5712f88,
0x2223b2d852bff840914]
private def weightRadiusDataRow008 : Array Int := #[0x22f223c6e4694c7897a,
0x23c3ce74ebe2e9e78e1,
0x2498b9491ab55e36515,
0x2570eaaa22693934a96,
0x264c68feb4870ab7449,
0x272b3aad829758cd99a,
0x280d661d3e22c1b0df8,
0x28f2f1b498b1c8cd57c,
0x29dbe3da43cd07fe1b7,
0x2ac842f4f0fd07558f1,
0x2bb8156b51ca59263c7,
0x2cab61a417bd8a6d3a7,
0x2da22e05f45f2da2081,
0x2e9c80f79937cfaa6c7,
0x2f9a60dfb7cffd3105d,
0x309bd42501b04ec9507]
private def weightRadiusDataRow009 : Array Int := #[0x31a0e12e28614e4aedf,
0x32a98e61dd6b8b63d08,
0x33b5e226d2579289e98,
0x34c5e2e3b8adf9d6e01,
0x35d996ff41f74dd7e07,
0x36f104e01fbc1ad8f13,
0x380c32ed0384f063368,
0x392b278c9eda6194493,
0x3a4de925a344fe2fcc9,
0x3b747e1ec24d5245d1f,
0x3c9eecdead7bf132be8,
0x3dcd3bcc16596ac40ea,
0x3eff714dae6e4adb237,
0x403593ca2743190c6a2,
0x416fa9a8326070c325d,
0x42adb94e814ee6032b8]
private def weightRadiusDataRow010 : Array Int := #[0x43efc923c596fc29b29,
0x4535df8eb0c13e4af74,
0x468002f5f4565197e29,
0x47ce39c041deb480e0e,
0x49208a544ae2fb03e3d,
0x4a76fb18c0ebab7feb6,
0x4bd192745581635932d,
0x4d3056cdba2ca8dcbf2,
0x4e934e8ba076154dd76,
0x4ffa8014b9e633a6429,
0x5165f1cfb8058973117,
0x52d5aa234c5cb56d4b0,
0x5449af76287437caaf4,
0x55c2082efdd4aa760ee,
0x573ebab47e069d30d27,
0x58bfcd6d5a929fbf1d9]
private def weightRadiusDataRow011 : Array Int := #[0x5a4546c045013c43dcd,
0x5bcf2d13eedafc8254a,
0x5d5d86cf09a881314d5,
0x5ef05a5846f2489d313,
0x6087ae165840f4162b4,
0x6223886fef1d0155b3e,
0x63c3efcbbd0f05d117e,
0x6568ea90739f91103ad,
0x67127f24c457390d02c,
0x68c0b3ef60be8716dce,
0x6a738f56fa5e0aba5cc,
0x6c2b17c242be5385653,
0x6de75397eb67f7e5334,
0x6fa8493ea5e379ca531,
0x716dff1d23b96f88f2a,
0x73387b9a167268b459c]
private def weightRadiusDataRow012 : Array Int := #[0x7507c51c2f96fc313ad,
0x76dbe20a20afab12d95,
0x78b4d8ca9b4513ae9c8,
0x7a92afc450dfb6a5a30,
0x7c756d5df3081b71e01,
0x7e5d17fe3346f872f66,
0x8049b60bc324be48f90,
0x823b4ded542a045993c,
0x8431e60997df49bfe75,
0x862d84c73fcd3ee8c86,
0x882e308cfd7c6331383,
0x8a33efc182753d9b776,
0x8c3ec8cb80405d6c0c3,
0x8e4ec211a8665acb85c,
0x9063e1faac6fc561b06,
0x927e2eed3de535ff44d]
private def weightRadiusDataRow013 : Array Int := #[0x949daf500e4f2a22a05,
0x96c26989cf3631128d5,
0x98ec64013222e3a3b56,
0x9b1ba51ce89dc7d3fc9,
0x9d503343a42f8a67726,
0x9f8a14dc1660801517f,
0xa1c9504cf0b9738a69f,
0xa40debfce4c2d693340,
0xa657ee52a40542dd03e,
0xa8a75db4e009481f24e,
0xaafc408a4a576b638c5,
0xad569d39947846c8e20,
0xafb67a296ff45f1006d,
0xb21bddc08e544383658,
0xb486ce65a12099fc969,
0xb6f7527f59e1dbd224f]
private def weightRadiusDataRow014 : Array Int := #[0xb96d70746a20984fcb7,
0xbbe92eab8365763cb30,
0xbe6a938b5738e222ccc,
0xc0f1a57a97238f00f4d,
0xc37e6adff4ade872497,
0xc610ea2221609609a03,
0xc8a929a7cec41b06186,
0xcb472fd7ae61201c3f0,
0xcdeb031871c0021eece,
0xd094a9d0ca69837f71e,
0xd3442a6769e62758ab8,
0xd5f98b4301be62bd941,
0xd8b4d2ca437aed19dc6,
0xdb760763e0a42da06eb,
0xde3d2f768ac2cee1fe7,
0xe10a5168f35f60b3bf4]
private def weightRadiusDataRow015 : Array Int := #[0xe3dd73a1cc0264affac,
0xe6b69c87c6345bbcc97,
0xe995d281937e006a1cf,
0xec7b1bf5e567d4562bb,
0xef667f4b6d7a497344c,
0xf25802e8dd3dfdaad10,
0xf54fad34e63b8fa1995,
0xf84d849639fb8f37bf2,
0xfb518f738a067c9b67c,
0xfe5bd43387e4e71f17e,
0x1016c593ce51f6e2aea0,
0x1048324f6533e915e153,
0x107a03dc683cae00bc15,
0x10ac3aa14284cfa32195,
0x10ded7045f24d4e00253,
0x1111d96c293548c524b3]
private def weightRadiusDataRow016 : Array Int := #[0x1145423f0bceb4515315,
0x117911e37209a0837b99,
0x11ad48bfc6fe930a67c0,
0x11e1e73a75c6193fe8e3,
0x1216edb9e978b7a79ce6,
0x124c5ca48d2efcda5120,
0x12823460cc016d4b3460,
0x12b875551108943c673b,
0x12ef1fe7c75cf84fb79a,
0x1326347f5a17273970df,
0x135db382344fa40128fa,
0x13959d56c11ef9f9f755,
0x13cdf2636b9db355fe2d,
0x1406b30e9ee457d4de4d,
0x143fdfbec60b71afe7c6,
0x147978da4c2b8610c16f]
private def weightRadiusDataRow017 : Array Int := #[0x14b37ec79c5d244ed0ad,
0x14edf1ed21b8cef64c3f,
0x1528d2b1475714308786,
0x1564217a78507906936f,
0x159fdeaf1fbd8a707816,
0x15dc0ab5a8b6cd612f41,
0x1618a5f47e54cc246370,
0x1655b0d20bb0127a19c1,
0x16932bb4bbe120f82f7e,
0x16d11702fa008bcdadb0,
0x170f73233126d4ea40fa,
0x174e407bcc6c86ac8e0d,
0x178d7f7336ea2a0a1b73,
0x17cd306fdbb8497528f2,
0x180d53d825ef6def3ef5,
0x184dea1280a81d70824f]
private def weightRadiusDataRow018 : Array Int := #[0x188ef38556fae26b426a,
0x18d0709714004761ffc9,
0x191261ae22d0d3c59a36,
0x1954c730ee850ef682e2,
0x1997a185e2358843562c,
0x19daf11368fabf15f9ec,
0x1a1eb63feded446732f3,
0x1a62f171dc259df9f375,
0x1aa7a30f9ebc516f2de2,
0x1aeccb7fa0c9f00c1d76,
0x1b326b284d66fdd44878,
0x1b7882700fac004e9853,
0x1bbf11bd52b18589da39,
0x1c06197681901688f134,
0x1c4d9a0207603c4eebd6,
0x1c9593c64f3a7c4c8b1a]
private def weightRadiusDataRow019 : Array Int := #[0x1cde0729c4376137cf4f,
0x1d26f492d16f74067197,
0x1d705c67e1fb3f8511d3,
0x1dba3f0f60f349003325,
0x1e049cefb9701d2007d6,
0x1e4f766f568a4303717a,
0x1e9acbf4a35a43a03879,
0x1ee69de60af8a7ec23bd,
0x1f32eca9f87dfad00845,
0x1f7fb8a6d702c3583349,
0x1fcd0243119f86811e10,
0x201ac9e5136cd72b36b1,
0x20690ff347833457f6a8,
0x20b7d4d418fb2af67c9e,
0x210718edf2ed4a2d76a8,
0x2156dca7407210b4fccb]
private def weightRadiusDataRow020 : Array Int := #[0x21a720666ca2097f4959,
0x21f7e491e295c80fd638,
0x224929900d65c69a37bb,
0x229aefc7582a94632c65,
0x22ed379e2dfcba608032,
0x2340017af9f4c5efb764,
0x23934dc4272b397aa1f9,
0x23e71ce020b8a025d0d4,
0x243b6f3551b5852ab5b4,
0x2490452a253a6f4635b1,
0x24e59f25065fe52010ef,
0x253b7d8c603e744547f1,
0x2591e0c69deea362edb5,
0x25e8c93a2a88fb6ef3cd,
0x2640374d7126055f4a91,
0x26982b66dcde47c0850d]
private def weightRadiusDataRow021 : Array Int := #[0x26f0a5ecd8ca52c4a590,
0x2749a745d002aa99f7ab,
0x27a32fd82d9fd342698d,
0x27fd400a5cba5d113f0f,
0x2857d842c86ad392988b,
0x28b2f8e7dbc9b5b26c9f,
0x290ea26001ef93f6bb3a,
0x296ad511a5f4f766b265,
0x29c7916332f26134c49f,
0x2a24d7bb1400621a7aba,
0x2a82a87fb437831f4cd4,
0x2ae104177eb047ef1b26,
0x2b3feae8de833c2202dc,
0x2b9f5d5a3ec8eb67c6e8,
0x2bff5bd20a99dec85d82,
0x2c5fe6b6ad0e96fa7a4a]
private def weightRadiusDataRow022 : Array Int := #[0x2cc0fe6e913fa5338a56,
0x2d22a36022458cd7d5b0,
0x2d84d5f1cb38dc7b4191,
0x2de79689f7321769ac26,
0x2e4ae58f1149cf3403ca,
0x2eaec3678498843570cc,
0x2f133079bc36c5334c77,
0x2f782d2c233d1547e71b,
0x2fddb9e524c40351b1de,
0x3043d70b2be41251bd85,
0x30aa8504a3b5d13fdaf1,
0x3111c437f751c6147e76,
0x3179950b91d076ae5f6c,
0x31e1f7e5de4a6f0df867,
0x324aed2d47d83e724462,
0x32b475483992647796ff]
private def weightRadiusDataRow023 : Array Int := #[0x331e909d1e917063af53,
0x33893f9261ede4cfe6b4,
0x33f4828e6ec0475f4320,
0x346059f7b021348256b2,
0x34ccc634912921b4c02b,
0x3539c7ab7cf0a1be2649,
0x35a75ec2de9036f4a9bd,
0x36158be1212070fc1a13,
0x36844f6cafb9d577409e,
0x36f3a9cbf574e9ed497c,
0x37639b655d6a3e2b6c50,
0x37d4249f52b25442be59,
0x384545e04065bc1c703b,
0x38b6ff8e919cfb38ac28,
0x39295210b1709a8d9ddd,
0x399c3dcd0af91f77e606]
private def weightRadiusDataRow024 : Array Int := #[0x3a0fc32a094f1dba4d85,
0x3a83e28e178b137e5eed,
0x3af89c5fa0c591031bd3,
0x3b6df10510171b9e06ce,
0x3be3e0e4d098388761bc,
0x3c5a6c654d61709f3729,
0x3cd193ecf18b582bebbd,
0x3d4957e2282e6cd364c5,
0x3dc1b8ab5c634308ec09,
0x3e3ab6aef942507edefd,
0x3eb4525369e4395464b8,
0x3f2e8bff19616745da02,
0x3fa9641872d27acba3cf,
0x4024db05e14ff9080061,
0x40a0f12dcff25ae1358d,
0x411da6f6a9d24171137d]
private def weightRadiusDataRow025 : Array Int := #[0x419afcc6da082174ee9f,
0x4218f304cbac985a67df,
0x42978a16e9d81667877d,
0x4316c2639fa33d722e74,
0x43969c5158267d617835,
0x441718467e7a6fe84dfe,
0x449836a97db79e14fce6,
0x4519f7e0c0f68401ff16,
0x459c5c52b34fc48dc76d,
0x461f6465bfdbca64db5a,
0x46a3108051b32707943d,
0x47276108d3ee70a9e52b,
0x47ac5665b1a62304422b,
0x4831f0fd55f2cff99f01,
0x48b831362bed009957f1,
0x493f17769ead30380e23]
private def weightRadiusDataRow026 : Array Int := #[0x49c6a425194bf56dc049,
0x4a4ed7a806e1d000dfe4,
0x4ad7b265d28752287494,
0x4b6134c4e755003eabab,
0x4beb5f2bb0636339d25c,
0x4c76320098cb04103541,
0x4d01adaa0ba47087ee35,
0x4d8dd28e74082327df10,
0x4e1aa1143d0eb355bc2e,
0x4ea819a1d1d0aa2234d8,
0x4f363c9d9d6686b80e69,
0x4fc50a6e0ae8d6eeeddb,
0x50548379857028c21381,
0x50e4a8267814fb26d921,
0x517578db4defe1268cf7,
0x5206f5fe721954726360]
private def weightRadiusDataRow027 : Array Int := #[0x52991ff64fa9f26ef418,
0x532bf72951ba39e498d6,
0x53bf7bfde362ae8e12ff,
0x5453aeda6fbbde8ae646,
0x54e8902561de5d6dbe94,
0x557e204524e29f06bf73,
0x56145fa023e136d5f8a5,
0x56ab4e9cc9f2b33c0a5b,
0x5742eda1822f97d7ca63,
0x57db3d14b7b06d9f9a90,
0x58743d5cd58dbd89dc35,
0x590deee046e0108cf025,
0x59a8520576bfef9f36b4,
0x5a436732d045e3b70fb4,
0x5adf2ecebe8a75cada78,
0x5b7ba93faca62ed0f5d4]
private def weightRadiusDataRow028 : Array Int := #[0x5c18d6ec05b197bfc01b,
0x5cb6b83a34c533c28854,
0x5d554d90a4f99d30d838,
0x5df49755c1674b9fe032,
0x5e9495eff526cdd10b65,
0x5f3549c5ab50acbab5a2,
0x5fd6b33d4efd71533a3e,
0x6078d2bd4b45aa9820be,
0x611ba8ac0b41d57b96cc,
0x61bf356ffa0a870c9336,
0x6263796f82b835eeba8e,
0x630875111063839b3ebe,
0x63ae28bb0e24ecd17769,
0x645494d3e714f442fa04,
0x64fbb9c2064c2916423d,
0x65a397ebd6e31a9b7ad5]
private def weightRadiusDataRow029 : Array Int := #[0x664c2fb7c3f2451fdb52,
0x66f5818c38923e580163,
0x679f8dcf9fdb88e09186,
0x684a54e864e6a72bc6aa,
0x68f5d73cf2cc35bccf69,
0x69a21533b4a4a363b42a,
0x6a4f0f3315888cc3c920,
0x6afcc5a180906d952ec2,
0x6bab38e560d4d567ef51,
0x6c5a6965216e5abcd14e,
0x6d0a57872d75725b722c,
0x6dbb03b1f002abf48e7e,
0x6e6c6e4bd42e8998421b,
0x6f1e97bb4511a8f00a4f,
0x6fd18066adc47742a8ff,
0x708528b4795f925b0052]
private def weightRadiusDataRow030 : Array Int := #[0x7139910b12fb7c3e0899,
0x71eeb9d0e5b0bde2341a,
0x72a4a36c5c97d9141d23,
0x735b4e43e2c96c47bbe2,
0x7412babde35deaf5fab5,
0x74cae940c96dec8b5ba3,
0x7583da330011e419a198,
0x763d8dfaf262707be9cc,
0x76f804ff0b78135c69f3,
0x77b33fa5b66b55b1911d,
0x786f3e555e54c7f8496d,
0x792c01746e4ce425d5b4,
0x79e98969516c3aab601d,
0x7aa7d69a72cb547f5628,
0x7b66e96e3d82ba9824f0,
0x7c26c24b1caafdae2925]
private def weightRadiusDataRow031 : Array Int := #[0x7ce761977b5ca6dbeaaf,
0x7da8c7b9c4b01fd40052,
0x7e6af51863be10b8b12e,
0x7f2dea19c39f02a4ceab,
0x7ff1a7244f6b6eb63faf,
0x80b62c9e723be5c99f80,
0x817b7aee9728f0d55816,
0x8241927b294b20f369ec,
0x830873aa93baf70f81e1,
0x83d01ee34190f3e3b07a,
0x8498948b9de5b91bfe6c,
0x8561d50a13d1a64e4f89,
0x862be0c50e6d764d0769,
0x86f6b822f8d190c4e6fc,
0x87c25b8a3e168702134e,
0x888ecb614954d0ea50e2]

def weightRadiusData : Array (Array Int) := #[
weightRadiusDataRow000, weightRadiusDataRow001, weightRadiusDataRow002, weightRadiusDataRow003, weightRadiusDataRow004, weightRadiusDataRow005, weightRadiusDataRow006, weightRadiusDataRow007, weightRadiusDataRow008, weightRadiusDataRow009, weightRadiusDataRow010, weightRadiusDataRow011, weightRadiusDataRow012, weightRadiusDataRow013, weightRadiusDataRow014, weightRadiusDataRow015, weightRadiusDataRow016, weightRadiusDataRow017, weightRadiusDataRow018, weightRadiusDataRow019, weightRadiusDataRow020, weightRadiusDataRow021, weightRadiusDataRow022, weightRadiusDataRow023, weightRadiusDataRow024, weightRadiusDataRow025, weightRadiusDataRow026, weightRadiusDataRow027, weightRadiusDataRow028, weightRadiusDataRow029, weightRadiusDataRow030, weightRadiusDataRow031
]

def trialNat : Trial → Nat | .inl i => i.val | .inr _ => 512
def headNat : Head → Nat | .inl i => i.val | .inr _ => 64
def leftWord (n k : Nat) : Int := (left.getD n #[]).getD k 0
def rightWord (k : Nat) (j : Head) : Int := (right.getD k #[]).getD (headNat j) 0
def middleNumerator (n : Fin 448) (j : Head) : Int := ∑ k : Fin 4, leftWord n.val k.val * rightWord k.val j

def coeff : Trial → Head → Int
  | .inl i, .inl j => if h : i.val < 64 then if i.val=j.val then 2^24 else 0
    else middleNumerator ⟨i.val-64,by have := i.isLt; omega⟩ (.inl j)
  | .inl i, .inr _ => if h : i.val < 64 then 0
    else middleNumerator ⟨i.val-64,by have := i.isLt; omega⟩ (.inr ())
  | .inr _, .inl _ => 0
  | .inr _, .inr _ => 2^24

def firstLower (t : Trial) : Int := (firstLowerData[trialNat t / 16]!)[trialNat t % 16]!
def firstUpper (t : Trial) : Int := (firstUpperData[trialNat t / 16]!)[trialNat t % 16]!
def weightCentre (t : Fin 512) : Int := (weightCentreData[t.val / 16]!)[t.val % 16]!
def weightRadius (t : Fin 512) : Int := (weightRadiusData[t.val / 16]!)[t.val % 16]!
def firstCentreValue (j : Head) : Int := ∑ t : Trial, coeff t j * (firstLower t+firstUpper t)
def firstRadiusValue (j : Head) : Int := ∑ t : Trial, Int.ofNat (coeff t j).natAbs * (firstUpper t-firstLower t)
def gramCentreValue (i j : Head) : Int := ∑ t : Fin 512, coeff (.inl t) i * (weightCentre t * coeff (.inl t) j)
def gramRadiusValue (i j : Head) : Int := ∑ t : Fin 512, Int.ofNat (coeff (.inl t) i).natAbs * (weightRadius t * Int.ofNat (coeff (.inl t) j).natAbs)
def trialHead (k : Fin 3) : Head := if k.val=0 then .inl 0 else if k.val=1 then .inl 63 else .inr ()
def pairLeft (k : Fin 3) : Head := if k.val<2 then .inl 0 else .inr ()
def pairRight (k : Fin 3) : Head := if k.val=0 then .inl 0 else .inr ()
def firstCentre (k : Fin 3) : Int := if k.val=0 then (-1406194160135410479080695408) else if k.val=1 then 147587331416188742022533554 else (-742062250372367686351974258)
def firstRadius (k : Fin 3) : Int := if k.val=0 then 26497391559108196971301516 else if k.val=1 then 18484950127970219887363064 else 13952230496815344305723128
def gramCentre (k : Fin 3) : Int := if k.val=0 then 64739786067446068506062528466474788233 else if k.val=1 then 34129884746395765127071952188535616193 else 18024565867686901622077111182526455590
def gramRadius (k : Fin 3) : Int := if k.val=0 then 155186829267092880982053320157577973 else if k.val=1 then 81963880065662236829237758466881297 else 43290798293580348948387347058187666

theorem weight_identities : ∀ t : Fin 512,
    (weightCentre t-weightRadius t)/2+(weightCentre t+weightRadius t)/2 = weightCentre t ∧
    (weightCentre t+weightRadius t)/2-(weightCentre t-weightRadius t)/2 = weightRadius t := by decide +kernel
theorem first_products : ∀ k : Fin 3,
    firstCentreValue (trialHead k) = firstCentre k ∧ firstRadiusValue (trialHead k) = firstRadius k := by decide +kernel
theorem gram_products : ∀ k : Fin 3,
    gramCentreValue (pairLeft k) (pairRight k) = gramCentre k ∧
    gramRadiusValue (pairLeft k) (pairRight k) = gramRadius k := by decide +kernel
end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourRemoteInteger
